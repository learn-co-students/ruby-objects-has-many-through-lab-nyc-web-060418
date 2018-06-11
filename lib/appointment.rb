class Appointment

  attr_reader :date
  attr_accessor :doctor, :patient

  @@all = []

  def self.all
    @@all
  end

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor

    @@all << self
  end
end
