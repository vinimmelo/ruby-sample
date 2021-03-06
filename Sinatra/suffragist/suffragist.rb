# Code based on Rails Girls

require 'sinatra'
require 'yaml/store'

get '/' do
  @title = 'Welcome to the Suffragist!!!'
  erb :index
end

post '/cast' do
  @title = 'Thanks for casting your vote!'
  @vote = params['vote']
  erb :cast
end


get '/results' do
  @title = 'Results'
  @votes = { 'HAM' => 7, 'PIZ' => 5, 'CUR' => 3}
  erb :results
end

Choices = {
  'Ham' => 'Hamburger',
  'PIZ' => 'Pizza',
  'CUR' => 'Curry',
  'NOO' => 'Noodles',
}