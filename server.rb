require 'sinatra'
require 'pry'
require 'sinatra/json'
require 'sinatra/respond_with'

USERS = [
  { first_name: 'Joe' },
  { first_name: 'John' }
]

def create_user(params)
  USERS << { first_name: params["first_name"] }
end

get '/' do
  erb :home, locals: { users: USERS }
end

post '/users/new' do
  create_user(params)

  respond_to do |format|
    format.html { redirect '/' }
    format.json { json recent_user: params["first_name"] }
  end
end
