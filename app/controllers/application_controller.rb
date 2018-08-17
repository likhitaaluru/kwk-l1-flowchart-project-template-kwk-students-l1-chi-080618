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

    decision = []
    if place == "virtual"
      if price == "low"
        if commitment == "short"
          if city == Chicago
          decision << "a udemy web page instructing teens street safety"
          decision << "https://www.udemy.com/street-safety-for-parents-of-teens-young-adults/"
        else commitment == "long"
          if city == Chicago
          decision << "a youTube channel meant to instruct on self defense"
          decision << "https://www.youtube.com/channel/UCj4JOZ3jvgkHPYew0ksfDZw"
        end
      else commitment == "long"
        if city == Los Angeles
      elsif price == "med"
        if commitment == "short"
          if city == Chicago
          decision << "one hour video course from ProTrainings"
          decision << "https://www.protrainings.com/en/courses/210-self-defense?topic_id=8-self-defense"
        else commitment == "long"
          if city == Chicago
          decision << "searching the S2 Academy courses."
          decision << "http://www.s2online.academy/courses/fighting-chance-womens-self-defense-course"
        end
      else price == "high"
        if commitment == "short"
          if city == Chicago
          decision << "searching for one on your own"
          decision << "we are unable to find one with that criterion"
        else commitment == "long"
          if city == Chicago
          decision << "buying a self defense study kit from the Self Defense College."
          decision << "https://www.selfdefensecollege.com/"
        end
      end
      
    elsif place == "physical"
      if price == "low"
        if commitment == "short"
          if city == Chicago
          decision << "attending a session offered free from the University of Illinois at Chicago police."
          decision << "https://today.uic.edu/uic-police-offer-womens-self-defense-courses"
        else commitment == "long"
          if city == Chicago
          decision << "buying a membership to the IL Shotokan Karate Clubs."
          decision << "https://www.iskc.com/"
        end
      elsif price == "med"
        if commitment == "short"
          if city == Chicago
          decision << "investing in a personal trainer."
          decision << "http://www.orangeshoe.com/Lakeview/PersonalTrainerCosts "
        else commitment == "long"
          if city == Chicago
          decision << "investing in a membership to 9round."
          decision << "https://www.9round.com/"
        end
      elsif price == "high"
        if commitment == "short"
          if city == Chicago
          decision << "enrolling in an Impact Chicago workshop."
          decision << "http://www.impactchicago.org/"
        else commitment == "long"
          if city == Chicago
          decision << "becoming a member of the Chicago MMA branch."
          decision << "http://www.chicagomma.com/?gclid=CjwKCAjwns_bBRBCEiwA7AVGHmC1TKLENP4Qhsaq72LVqYDhlg-tedpj5uZNZuhfatuzC2cUUyyEHRoCctsQAvD_BwE#mixed-martial-arts"
        end
      end

    else
      return "wrong page"
    end
    return "Due to your selections, we would recommend a #{decision[0]} (#{decision[1].gsub(URI.regexp, '<a href="\0">\0</a>')})."
    
    end
end
