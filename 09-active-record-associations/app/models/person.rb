class Person < ActiveRecord::Base
    has_many :plant_parenthoods
    # the code below allows us to access plants without
    # needing to go through the plant_parenthoods when in pry
    # now with this, we can do `Person.first.plants`
    # instead of `Person.first.plant_parenthoods.first.plant`
    has_many :plants, through: :plant_parenthoods

    def custom_method
        plants.each do |plant|
            puts plant
        end
    end
end
