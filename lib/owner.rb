class Owner
  # code goes here
  attr_accessor :owner, :name, :species, :pets

  @@all = []

  def initialize(owner)
    @owner = owner
    @@all << self
    @species = "human"
    @pets = { fishes: [], cats: [], dogs: [] }
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

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs].each { |dogObj| dogObj.mood = "happy" }
  end

  def play_with_cats
    @pets[:cats].each { |catObj| catObj.mood = "happy" }
  end

  def feed_fish
    @pets[:fishes].each { |fishObj| fishObj.mood = "happy" }
  end

  def sell_pets
    @pets.each { |type, petArray|
      petArray.each { |petObj| petObj.mood = "nervous" }
    }
    @pets = { fishes: [], cats: [], dogs: [] }
  end

  def list_pets
    fishcount = 0
    catcount = 0
    dogcount = 0
    @pets.each { |type, petArray|
        if type == :fishes
           fishcount = petArray.size
        elsif type == :cats
          catcount = petArray.size
        else type == :dogs
          dogcount = petArray.size
        end
    }
    return "I have #{fishcount} fish, #{dogcount} dog(s), and #{catcount} cat(s)."
  end

end
