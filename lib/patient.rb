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

  def new_appointment(doctor, date)
    appt = Appointment.new(self, doctor, date)
  end


  def appointments
    Appointment.all.select {|appts| appts.patient == self}
  end

  def doctors
    appointments.map {|appts| appts.doctor}
  end
end
