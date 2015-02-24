require 'sinatra'
require 'pry'

users = [
  { email: 'example1@gmail.com', first_name: 'Joe', last_name: 'Jones', status: 'Sleeping', project: 'CSS' },
  { email: 'example2@gmail.com', first_name: 'Jack', last_name: 'Jones', status: 'Sleeping', project: 'CSS' },
  { email: 'example3@gmail.com', first_name: 'Jill', last_name: 'Jones', status: 'Sleeping', project: 'CSS' },
  { email: 'example4@gmail.com', first_name: 'Jane', last_name: 'Jones', status: 'Sleeping', project: 'CSS' },
  { email: 'example5@gmail.com', first_name: 'John', last_name: 'Jones', status: 'Sleeping', project: 'CSS' },
  { email: 'example6@gmail.com', first_name: 'Jimmy', last_name: 'Jones', status: 'Sleeping', project: 'CSS' },
  { email: 'example7@gmail.com', first_name: 'Jason', last_name: 'Jones', status: 'Sleeping', project: 'CSS' },
  { email: 'example8@gmail.com', first_name: 'Jordan', last_name: 'Jones', status: 'Sleeping', project: 'CSS' }
]

get '/' do
  erb :home
end
