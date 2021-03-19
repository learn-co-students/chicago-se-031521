class Doctor

    @@all = []

    attr_reader :name, :specialty, :hospital

    # def name
    #     @name
    # end

    def initialize(name_arg, specialty_arg, hospital_arg)
        @name = name_arg
        @specialty = specialty_arg
        @hospital = hospital_arg

        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select do |appointment|
            appointment.doctor_instance == self   
        end
    end

    def patients
        appointments.map do |appointment|
            appointment.patient_instance
        end
    end

end