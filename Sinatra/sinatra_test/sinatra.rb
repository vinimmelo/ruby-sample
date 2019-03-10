require 'sinatra'

get '/test' do
  name = params['name']
  age = params['age']

  if name != nil and age != nil
    "<h1><strong>Hello #{name}!" +
    " Your age is #{age}</strong></h1>"
  else
    "<h1>Anyone Here???</h1>"
  end
end