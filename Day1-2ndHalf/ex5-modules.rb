module Walkable
  def walk
    puts "walk walk walk.."
  end
end

module Climable
  def climb
    puts "climb climb climb.."
  end
end

module Swimmable
  def swim
    puts "swim swim swim.."
  end
end

class Animal
  include Walkable, Climable, Swimmable
end

my_dog = Animal.new
my_dog.walk
my_dog.climb
my_dog.swim


# .ancestors allows you to trace which is the nearer method to inherit if there are same named ones
 p Animal.ancestors # [Animal, Walkable, Climable, Swimmable, Object, Kernel, BasicObject]
