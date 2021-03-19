require 'pry'

require_relative 'models/doctor'
require_relative 'models/patient'
require_relative 'models/appointment.rb'


doctor1 = Doctor.new("Dre", "Beats", "Northwestern")
doctor2 = Doctor.new("Octavious", "Spiderman", "Saint Mary's")

patient1 = Patient.new("Susan", "12")
patient2 = Patient.new("Peter", "24")

appt1 = Appointment.new(doctor1, patient1, "03252021", "9AM", "Fever")
appt2 = Appointment.new(doctor2, patient2, "03192021", "12PM", "Spider bite")

binding.pry