class Ship
  attr_reader :name, :type, :booty

 ALL = []

  def initialize(params)
    @name = params[:name]
    @type = params[:type] #[:ships][][:type]
    @booty = params[:booty] #[:ships][][:booty]
    ALL << self
  end

  def self.all
    ALL
  end

  def self.clear
    ALL.clear
  end

end 

