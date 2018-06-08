class Patient

  @@all = []
  attr_accessor :name
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
    Appointment.new(date, doctor, self)
  end

  def appointments
    Appointment.all.select{|apt|apt.patient == self}
  end

  def doctors
    appointments.map{|apt|apt.date}
  end

end
