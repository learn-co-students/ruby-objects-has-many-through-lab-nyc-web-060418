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

  def new_appointment(patient, time)
    new_appt = Appointment.new(time, patient, self)
  end

  def appointments
    Appointment.all.select do |appt|
      appt.doctor == self
    end
  end

  def patients
    self.appointments.collect do |appt|
      appt.patient
    end.uniq
  end

end
