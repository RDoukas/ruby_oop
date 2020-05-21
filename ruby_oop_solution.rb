# #Write your solution below:

# class Animal 
#   attr_writer :state
#   attr_reader :state

#   def initialize(type)
#     @type = type
#   end 

#   def eat(food)
#     puts "The #{@type} is eating #{food}."
#   end 

#   def sleep
#     @state = "sleep"
#   end 

#   def awake
#     @state = "awake"
#   end 

# end 

# tiger = Animal.new("tiger")
# elephant = Animal.new("elephant")
# mouse = Animal.new("mouse")

# tiger.awake
# elephant.sleep
# mouse.awake

# p tiger
# p elephant
# p mouse




class Person < Animal
  def initialize(input_options)
    super 
    @type = "Person"
  end 

  

end 