require 'bundler'
Bundler.require
require_relative 'models/model.rb'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  get '/about' do
    erb :about
  end

get '/help' do
    erb :help
  end

 post '/list_clothing' do
   pack=params[:clothes]
   @answer=snappack(pack)
   erb :results
  end
  
  
end