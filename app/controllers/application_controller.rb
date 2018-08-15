require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  
  get '/' do
    erb :index
  end
  
  post '/results' do
    
    place = params[:place]
    price = params[:price] 
    commitement = params[:commitement]
    city = params[:city]
    
    if place == "virtual"
      return "virtual page"
    elsif place == "physical"
      return "physical page"
    else
      return "wrong page"
    end
    
  end

end