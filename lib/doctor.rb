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
    new_appt = Appointment.new(patient, self, time)
    Appointment.all << new_appt
  end

  def appointments
    Appointment.all.select do |appt|
      appt.doctor.name == self.name
    end
  end

  def patients
    self.appoinments.all.select do |appt|
      appt.patient.name
    end.uniq
  end

end
