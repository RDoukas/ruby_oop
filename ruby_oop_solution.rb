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
    @type = "person"
    @age = input_options[:age]
    @gender = input_options[:gender]
    @name =input_options[:name]
  end 

  # def eat(food)
  #   if food == "person"
  #     food = "nothing"
  #     puts "They are eating #{food}."
  #   end
  # end 

  def eat(food)
    response = ""
    if food == "person"
      response = "Sir! I am NOT a cannibal!"
    else
      response ="Yum! I am eating #{food}!"
    end
    puts response
  end

  def greet 
    puts "Hi, I'm #{@name}. I'm a #{@type}, and #{@age} years old."
  end 
end


person1 = Person.new(type: "person", age: 10, gender:"female", state: "awake", name: "Becca Doukas")

person1.eat("cheese")
person1.greet
p person1


