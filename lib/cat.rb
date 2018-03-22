class Cat
  # code goes here
  attr_accessor :name, :mood

  def initialize(name)
    @name = name
    @mood = "nerovus"
  end

  def name=(name)
    raise NoMethodError
  end



end
