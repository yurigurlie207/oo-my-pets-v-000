class Cat
  
  # code goes here
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def name=(name)
    raise NoMethodError
  end


end
