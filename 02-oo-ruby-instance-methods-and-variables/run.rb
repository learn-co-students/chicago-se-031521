require 'pry'
# Define a class called Dog
# Create a setter and getter method for a dog's attributes
# Write methods for a dog using some of its attributes

class Dog

    # # macros to define the getter and setter methods

    # # create getter method
    # attr_reader(:name, :breed, :weight, :num_ears)

    # # create setter method
    # attr_writer :name, :weight

    # # create a getter & setter method
    attr_accessor :name, :weight

    attr_reader :breed, :num_ears

    def initialize(name_arg, breed_arg, weight_arg = 80)
        # @name <--- instance variable
        @name = name_arg
        @breed = breed_arg
        @weight = weight_arg
        @num_ears = 2
    end

    # # instance method: only works for instances of a class
    # # setter method: change a given attribute's value
    # def weight=(new_weight)
    #     @weight = new_weight
    # end

    # # instance method: only works for instances of a class
    # # getter method: get/retrieve/give access to a given attribute's value
    # def weight
    #     @weight
    # end

    # def name=(new_name)
    #     @name = new_name
    # end

    # def name
    #     @name
    # end

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

# Dog class instances
matt = Dog.new("Matt", "Beagle", 100)
roxas = Dog.new("Roxas", "Golden Retriever")


binding.pry
0