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
    commitment = params[:commitment]
    city = params[:city]

    if place == "virtual"
      if price == "low"
        if commitment == "short"
          # if city == Chicago
          return "https://www.udemy.com/street-safety-for-parents-of-teens-young-adults/"
        else commitment == "long"
          # if city == Chicago
          return "https://www.youtube.com/channel/UCj4JOZ3jvgkHPYew0ksfDZw"
        end
      elsif price == "med"
        if commitment == "short"
          # if city == Chicago
          return "https://www.protrainings.com/en/courses/210-self-defense?topic_id=8-self-defense"
        else commitment == "long"
          # if city == Chicago
          return "http://www.s2online.academy/courses/fighting-chance-womens-self-defense-course"
        end
      else price == "high"
        if commitment == "short"
          # if city == Chicago
          return "none availiable!"
        else commitment == "long"
          # if city == Chicago
          return "https://www.selfdefensecollege.com/"
        end
      end
      
    elsif place == "physical"
      if price == "low"
        if commitment == "short"
          # if city == Chicago
          return "https://today.uic.edu/uic-police-offer-womens-self-defense-courses"
        else commitment == "long"
          # if city == Chicago
          return "https://www.iskc.com/"
        end
      elsif price == "med"
        if commitment == "short"
          # if city == Chicago
          return "http://www.orangeshoe.com/Lakeview/PersonalTrainerCosts "
        else commitment == "long"
          # if city == Chicago
          return "https://www.9round.com/"
        end
      elsif price == "high"
        if commitment == "short"
          # if city == Chicago
          return "http://www.impactchicago.org/"
        else commitment == "long"
          # if city == Chicago
          return "http://www.chicagomma.com/?gclid=CjwKCAjwns_bBRBCEiwA7AVGHmC1TKLENP4Qhsaq72LVqYDhlg-tedpj5uZNZuhfatuzC2cUUyyEHRoCctsQAvD_BwE#mixed-martial-arts"
        end
      end


    else
      return "wrong page"
    end
    
    
  end

end