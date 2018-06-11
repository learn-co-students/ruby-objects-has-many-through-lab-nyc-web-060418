class Patient

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def appointments
    Appointment.all.select{|app|app.patient == self}
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(self, doctor, date)
  end

  def doctors
    appointments.map{|appointment| appointment.doctor}
  end
end
