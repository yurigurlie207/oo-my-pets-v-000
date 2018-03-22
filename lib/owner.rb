class Owner
  # code goes here
  attr_accessor :owner
  attr_writer :species
  
  @@all = []

  def initialize(owner)
    @owner = owner
    @@all << self
    @species = "human"
  end

  def species=(species)
    raise NoMethodError
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all = []
  end

end
