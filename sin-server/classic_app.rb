require 'sinatra'

get '/' do
  'Hello world and Pavlos!'
end

get '/command' do
  erb :command
end
