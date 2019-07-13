require 'sinatra'
require 'sinatra/activerecord'
require './app/models/friendship'

class App < Sinatra::Base
  get "/" do
    erb :index
  end
end
