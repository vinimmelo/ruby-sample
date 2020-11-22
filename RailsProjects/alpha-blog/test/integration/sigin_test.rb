require 'test_helper'

class SignInTest < ActionDispatch::IntegrationTest
  setup do
    @user = User.create(username: 'Johndoe', email: 'johndoe@example.com', password: 'password')
  end

  test 'sign in failed' do
    get '/login'
    assert_response :success
    assert_match 'Log In', response.body

    post '/login', params: { session: { email: @user.email, password: 'wrong' } }
    assert_match 'There was something wrong ', response.body
  end

  test 'sign in success' do
    get '/login'
    assert_response :success

    post '/login', params: { session: { email: @user.email, password: @user.password } }
    assert_response :redirect
    assert_redirected_to user_path(@user)
    follow_redirect!
    assert_response :success
    assert_match 'Logged in successfully', response.body
  end
end
