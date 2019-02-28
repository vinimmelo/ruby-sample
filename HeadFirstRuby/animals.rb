class Animal
    attr_accessor :name, :age

    def name=(value)
        if value == ""
            raise 'Name cant be blank'
        else
            @name = value
        end
    end

    def age=(value)
        if value < 0
            raise "An age of #{value} isn't valid!"
        else
            @age = value
        end
    end

    def report_age
        puts "#{@name} is #{@age} years old"
    end

    def talk
        puts "#{@name} says bark!"
    end

    def move(destination)
        puts "#{@name} runs to the #{destination}"
    end

    def to_s
      "#{@name} the dog, age #{@age}"
    end
end

class Dog < Animal
end

class Bird < Animal
    def talk
        puts "#{name} says Chirp! Chirp!"
    end
end

class Cat < Animal
    def talk
        puts " #{name} says Meow! "
    end
end

class Armadillo < Animal
    def move(destination)
        puts "#{@name} unrolls!"
        puts "#{@name} runs to the #{destination}"
    end
end



fido = Cat.new
fredo = Bird.new
rex = Dog.new
rex.name = 'Rex'
rex.age = 7
fido.name = "Pingo"
fredo.name = "Alfredinho"
fredo.move("Broken Windows")
fredo.name = 'TwinkleWinkee'
fido.age = 11
fredo.age = 3

rex.report_age
fredo.move("pee in the tree")
fredo.talk
fido.move("stopped card")
fido.talk
puts fido, fredo, rex
