require 'faker'


10.times do
  doc = Doctor.create(first_name: Faker::Simpsons.character, last_name: Faker::Simpsons.location, specialty: Faker::Kpop.solo, postal_code: 61100)
end

20.times do
  pat = Patient.create(first_name: Faker::DrWho.actor, last_name: Faker::DrWho.specie)
end

30.times do
  a = rand(1..10)
  b = rand(1..20)
  app = Appointment.create(doctor_id: a, patient_id: b, date: Faker::Date.forward(50))
end
