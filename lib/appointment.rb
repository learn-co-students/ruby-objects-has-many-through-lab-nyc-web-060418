require 'pry'
class Appointment

  
  attr_accessor :date, :patient, :doctor

  @@all = []

  def self.all
    @@all
  end

  def initialize (date, patient, doctor)
    # binding.pry
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end


  # def patient
  #   @patient
  # end
  #
  # def doctor
  #   @doctor
  # end
end
