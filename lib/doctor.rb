class Doctor
 attr_accessor :name, :appointment, :patient
  
  @@all = []

  def initialize(name)
     @name = name
     @@all << self
  end
  def self.all
   @@all
  end
  def appointments
   Appointment.all.select {|appointment| appointment.doctor == self}
  end
  def patients
   appointments.map {|appointment| appointment.patients}
  end
  def new_appointment(appointment, patient)
    Appointment.new(self,appointment, patient)
  end
  end 


   
   


   
