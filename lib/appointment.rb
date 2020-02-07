class Appointment 
  attr_accessor :date, :patient, :doctor 
  
  @@all = []
  
  def initialize(doctor, patient, date)
    @date = date 
    @patient = patient
    @doctor = doctor
    save 
  end 
  
  def save 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
end 