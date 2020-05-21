# #Write your solution below:

class Animal 
  attr_writer :state
  attr_reader :state

  def initialize(type)
    @type = type
  end 

  def eat(food)
    if food == "person"
      food = "nothing"
    puts "The #{@type} is eating #{food}."
    end
  end 

  def sleep
    @state = "sleep"
  end 

  def awake
    @state = "awake"
  end 

end 

tiger = Animal.new("tiger")
elephant = Animal.new("elephant")
mouse = Animal.new("mouse")

tiger.awake
elephant.sleep
mouse.awake

p tiger
p elephant
p mouse




class Person < Animal
  def initialize(input_options)
    super 
    @type = "Person"
    @age = input_options[:age]
    @gender = input_options[:gender]
  end 

  def eat(food)
    if food == "person"
      food = "nothing"
      puts "They are eating #{food}."
    end
  end 
end


person1 = Person.new(type: "person", age: 10, gender:"female", state: "awake")

person1.eat("cheese")
puts person1.eat("person")

p person1