class Owner
  # code goes here
  attr_accessor :owner, :name, :species

  @@all = []

  def initialize(owner)
    @owner = owner
    @@all << self
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def species=(species)
    raise NoMethodError
  end

  def say_species
    return "I am a #{@species}."
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

  def name=(name)
    @name = name
  end

end
