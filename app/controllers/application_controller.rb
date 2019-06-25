require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/index" do						# Can't Create + Post on a page that runs .All on the same Class
    erb :index							# Need erb other pg loads blank
  end

  get "/buy" do
  	@fishes = SaltwaterFish.all
  	#erb :saltwater_fish.index
  	erb :buy
  end

  get "/saltwater_fishes" do
    erb :saltwater_fishes
  end

  post "/saltwater_fishes" do 	
  	SaltwaterFish.create(species: params[:species], color: params[:color], name: params[:name])
  	erb :saltwater_fishes
  	# SaltwaterFish.create(species: "Lionfish", name: "Teddy", color: "brown")
  end

  get "/fishtank" do		 			# Displays all the fish
  	@fishes = SaltwaterFish.all 		# Convention - s/b @saltwater_fishes.  not convention works
    erb :fishtank
  end



end
