class Ride

    attr_reader :passenger, :driver, :distance

    @@all = []

    def initialize(passenger, driver, distance)
        @passenger = passenger
        @driver = driver
        @distance = distance

        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        # self.all.sum {|ride| ride.distance}
        sum = self.all.sum do |ride| 
            ride.distance
        end
        count = all.length
        average = sum/count
    end

end