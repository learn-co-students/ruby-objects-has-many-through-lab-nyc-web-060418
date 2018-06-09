


class Patient

  attr_reader :name

  def initialize(naem)
    @name = name
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select do |app|
      app.patient == self
    end
  end

  def doctors
    appointments.map do |app|
      app.doctor
    end
  end

end
