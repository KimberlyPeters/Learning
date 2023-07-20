require 'sinatra'
require 'json'
require_relative './my_user_model.rb'

set :bind, '0.0.0.0'
set :port, 8080
enable :sessions

get '/' do
  @users = User.all
  erb :index
end

get '/users' do
  content_type :json
  users = User.all.map { |user| user.slice('firstname', 'lastname', 'age', 'email') }
  users.to_json
end

post '/users' do
  if params[:firstname]
    user = User.create(params)
    user_data = User.find(user.id)
    user_info = {
      firstname: user_data.firstname,
      lastname: user_data.lastname,
      age: user_data.age,
      email: user_data.email
    }
    status 200
    user_info.to_json
  else
    result = User.authenticate(params[:password], params[:email])
    if !result.empty? && !result[0].empty?
      session[:id] = result[0]['id']
      status 200
    else
      status 401
    end
    result[0].to_json
  end
end

put '/users' do
  res = User.update(session[:id], 'password', params[:password])
  res = User.find(session[:id])
  status 200
  users_parameters = {
    'lastname' => res.lastname,
    'firstname' => res.firstname,
    'age' => res.age,
    'email' => res.email
  }.to_json
end

post '/sign_in' do
  password = params[:password]
  email = params[:email]
  sign_in = User.authenticate(password, email)

  if !sign_in.empty?
    session[:id] = sign_in[0]['id']
    status 200
    redirect '/users'
  else
    status 401
  end
  sign_in[0].to_json
end

delete '/users' do
  status 204
  body ''
end

delete '/sign_out' do
  session[:id]
  status 200
  if session[:id]
    session[:id] = nil
  else
    status 404
  end
end
