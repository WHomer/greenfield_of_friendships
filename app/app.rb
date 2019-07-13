require 'sinatra'
require 'sinatra/activerecord'
require './app/models/friendship'

class App < Sinatra::Base
  get "/" do
    erb :index
  end

  get "/users/friends" do
    token = params[:site_token]
    user = params[:user_id].to_i
    results = Friendship.where({site_token: token, user_id: user})

    if results.count > 0
      results.map{|result| result.to_api}.to_json
    else
      "error: No records".to_json
    end
  end
end
