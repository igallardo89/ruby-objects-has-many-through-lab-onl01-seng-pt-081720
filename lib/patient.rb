class Patient

    attr_accessor :name, :doctor, :appointment
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

    def doctor
     appointments.map {|appointment| appointment.doctor}
   end

    def new_appointment(doctor, appointment)
     Appointment.new(self, doctor, appointment)
   end

  end