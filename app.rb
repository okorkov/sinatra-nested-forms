require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      "Welcome to the Nested Forms Lab!"
    end

    get '/new' do
      "form"
      erb :"pirates/new"
    end

    post '/pirates' do
      @params = params
      @pirates = Pirate.new(@params)

      params[:pirate][:ships].each do |ship|
        Ship.new(ship)
      end
      @ships = Ship.all
      
       erb :"pirates/show"
    end

  end
end

{"pirate"=>{"name"=>"Alex", "weight"=>"150", "height"=>"5-8", "ships"=>
  [{"name"=>"Dirty Bastard", "type"=>"motorboat", "booty"=>"no ass"}, 
  {"name"=>"Latino heat", "type"=>"Yeacht", "booty"=>"Juicy"}]}}