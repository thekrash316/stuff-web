require 'sinatra/base'

class CommanderApp < Sinatra::Application

  get '/' do
    'CommanderApp'
  end

  get '/command' do
    $counter = 0
    erb :command
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

class BetterCommanderApp < Sinatra::Application

  use CommanderApp

  get '/better' do
    'BetterCommanderApp'
  end

  get '/better/command' do
    erb :command
  end

  # start the server if ruby file executed directly
  #run! if app_file == $0
end
