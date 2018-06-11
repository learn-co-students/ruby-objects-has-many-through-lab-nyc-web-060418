class Patient
  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select{ |appointment| appointment.patient == self }
  end
  
  def doctors
    mydoctor = Appointment.all.select {|appointment| appointment.patient == self}
    mydoctor.map {|appointment| appointment.doctor}
  end

end
