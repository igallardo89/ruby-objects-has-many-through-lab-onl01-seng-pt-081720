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
   appointments.map {|appointment| appointment.patient}
  end
  def new_appointment(patient, date)
    Appointment.new( patient, date, self)
  end
end 


   
   def self.all
     @@all
   end

    def songs
     Song.all.select {|song| song.artist == self}
   end

    def genres
     songs.map {|song| song.genre}
   end

    def new_song(song, genre)
     Song.new(name, self, genre)
   end

 
  end