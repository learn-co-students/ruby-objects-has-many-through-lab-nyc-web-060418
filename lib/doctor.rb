class Doctor

  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor = self
    end
  end

  def patients
    Appointment.all.collect do |appointment|
      appointment.patient
    end
  end
end
