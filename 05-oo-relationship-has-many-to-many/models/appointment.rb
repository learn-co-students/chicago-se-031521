class Appointment

    @@all = []

    attr_reader :doctor_instance, :patient_instance
    attr_accessor :date, :time, :reason_for_visit

    def initialize(doctor_instance_arg, patient_instance_arg, date_arg, time_arg, reason_for_visit_arg)
        @doctor_instance = doctor_instance_arg
        @patient_instance = patient_instance_arg
        @date = date_arg
        @time = time_arg
        @reason_for_visit = reason_for_visit_arg

        @@all << self
    end

    def self.all
        @@all
    end

end