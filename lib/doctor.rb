require 'pry'

class Doctor
  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select {|appts| appts.doctor == self}
  end

  def patients
    appts = self.appointments
    appts.map {|appt| appt.patient}
  end

end
