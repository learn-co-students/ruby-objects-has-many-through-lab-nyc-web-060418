class Appointment

  attr_reader :patient, :doctor
  attr_accessor :date

  @@all = []

  def self.all
    @@all
  end

  def initialize (patient, doctor, date)
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
