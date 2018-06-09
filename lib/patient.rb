class Patient

  attr_reader :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, time)
    new_appt = Appointment.new(self, doctor, time)
    Appointment.all << self
  end

  def appointments
    Appointment.all.select do |appt|
      appt.patient.name == self.name
    end
  end


  def doctors
    self.appointments.select do |appt|
      appt.doctor.name == self.name
    end.uniq
  end

end
