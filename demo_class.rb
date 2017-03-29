class Pet
  attr_accessor :name

  def initialize(fuzzy, name)
    puts 'hi from pet init'
    @fuzzy = fuzzy
    @name = name
  end

  def speak
    puts "hi I'm " + name
  end

end

class Cat < Pet
  attr_accessor :color
  def initialize(fuzzy, name, color)
    puts 'hi from cat init'
    super(fuzzy, name)
    @color = color
  end

  def speak
    puts 'meow!'
  end

  def sleep
    puts 'zzzz'
  end
end

class Dog < Pet
  def initialize(name, ferocious)
    puts 'hi from Dog init'
    @name = name
    @ferocious = ferocious
  end

  def sleep
    puts 'snore!'
  end
end

barkley = Pet.new true, 'charles'

puts barkley.name

garfield = Cat.new(true, 'garfield', 'orange')
puts garfield.color

porkchop = Dog.new('porkchop', false)
porkchop.sleep
porkchop.speak

#################################
#################################
#################################

class Array
  def pwughsh(new_item)
    length = self.length
    self[length] = new_item
    return self
  end
end

my_array = ['this', 'is', 'an', 'array']
my_array.pwughsh('cool')
puts my_array