class Patient

    attr_accessor :name, :appointment, :doctor
   @@all = []

    def initialize(name)
     @name = name
     @@all << self
   end

    def self.all
     @@all
   end

    def appointments
     Appointment.all.select {|appointment| appointment.patient == self}
   end

    def doctors
     appointments.map {|appointment| appointment.doctors}
   end
 end

    def new_appointment(doctor,appointment)
     Appointment.new(self, doctor, appointment)
   end

  end