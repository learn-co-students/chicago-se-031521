class Passenger

    attr_reader :name
    
    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select {|ride| ride.passenger == self }
    end 

    def drivers
        rides.collect {|ride| ride.driver}
    end

    def total_distance
        rides.sum do |ride| 
            ride.distance
        end
    end

    def self.premium_members
        Passenger.all.select{|passenger| passenger.total_distance > 100}    
    end
end