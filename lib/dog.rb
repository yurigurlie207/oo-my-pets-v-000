class Dog
  # code goes here
  attr_accessor :name, :mood

  def initialize(name)
    @name = name
  end

  def name=(name)
    raise NoMethodError
  end
end
