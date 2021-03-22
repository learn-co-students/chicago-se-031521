class Driver

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
        Ride.all.select {|ride| ride.driver == self }
    end

    def passenger_names
        rides.map {|ride| ride.passenger.name}.uniq
    end

    def self.mileage_cap(distance)
        Ride.all.map do |ride|
            # binding.pry
        end
    end

end