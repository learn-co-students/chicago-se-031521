require 'pry'
# Define a class called Dog
# Create a setter and getter method for a dog's attributes
# Write methods for a dog using some of its attributes

class Dog
    attr_accessor :name, :weight
    attr_reader :breed, :num_ears

    # local variable: roxas
    # instance variable: @breed
    # class variable: @@all_dogs

    # creating a class `all` method
    # 1. define class variable: @@all_dogs
    # 2. push new DOg instance into class variable
    # 3. define class method: self.all
    # 4. call class variable in the body of our class method

    @@all_dogs = []

    def initialize(name_arg, breed_arg, weight_arg = 80)
        @name = name_arg
        @breed = breed_arg
        @weight = weight_arg
        @num_ears = 2

        @@all_dogs << self
        # @@all_dogs << @name


        puts "I am #{self} in the initialize method"
    end

    # class method
    def self.who_am_i
        puts "I am #{self} in the self.who_am_i method"
    end

    # class method
    def self.all
        @@all_dogs
    end

    def who_am_i
        puts "first: #{self}"
        puts "second: #{self.breed}" # explicitly using self
        puts "third: #{@breed}" # directly accessing the instance variable
        puts "fourth: #{breed}" # implictly use of self
        # puts "fifth: #{self.@name}" # not going to work b/c @name is an instance variable, not a method
    end

    def bark
        puts "My name is #{@name}"
    end

    def rollover
        if @breed == "Golden Retriever"
            puts "roll over"
        else
            puts "I can't I'm a #{@breed}"
        end
    end
end

# Dog instances
matt = Dog.new("Matt", "Beagle", 100)
roxas = Dog.new("Roxas", "Golden Retriever")
blue = Dog.new("Blue", "Hound")

# Dog class method call
Dog.all

binding.pry
0