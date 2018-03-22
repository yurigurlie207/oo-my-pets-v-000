class Owner
  # code goes here
  attr_accessor :owner, :species

  @@all = []

  def initialize(owner, species)
    @owner = owner
    @@all << self
    @species = "human"
  end

  def species=(species)
    raise NoMethodError
  end

  def say_species
    puts "I am a #{@species}."
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
