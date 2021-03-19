class Patient

    @@all = []

    attr_reader :name, :age

    # def name
    #     @name
    # end

    def initialize(name_arg, age_arg)
        @name = name_arg
        @age = age_arg

        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select do |appointment|
            appointment.patient_instance == self   
        end
    end

    def doctors
        appointments.map do |appointment|
            appointment.doctor_instance
        end
    end

end