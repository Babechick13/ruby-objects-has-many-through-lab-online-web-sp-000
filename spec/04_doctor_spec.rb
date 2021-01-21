require 'spec_helper'

require 'pry'
describe 'Doctor' do
  describe '#name' do
    it 'has a name' do
@@ -21,8 +21,8 @@
      doctor_who = Doctor.new('The Doctor')
      doctor_smith = Doctor.new('Matt Smith')
      hevydevy = Patient.new('Devin Townsend')
      appointment = Appointment.new(hevydevy, doctor_who, 'Friday, January 32nd')
      appointment_2 = Appointment.new(hevydevy, doctor_smith, 'Saturday, January 33rd')
      appointment = Appointment.new('Friday, January 32nd', hevydevy, doctor_who)
      appointment_2 = Appointment.new('Saturday, January 33rd', hevydevy, doctor_smith)

      expect(doctor_who.appointments).to include(appointment)
      expect(doctor_smith.appointments).to include(appointment_2)
    end
  end
  describe '#new_appointment' do
    it 'given a date and a patient, creates a new appointment' do
      doctor_who = Doctor.new('The Doctor')
      hevydevy = Patient.new('Devin Townsend')
      appointment = doctor_who.new_appointment(hevydevy, 'Friday, January 32nd')
      expect(doctor_who.appointments).to include(appointment)
      expect(appointment.doctor).to eq(doctor_who)
    end
  end
  describe '#patients' do
    it 'has many patients, through appointments' do
      doctor_who = Doctor.new('The Doctor')
      hevydevy = Patient.new('Devin Townsend')
      doctor_who.new_appointment(hevydevy, 'Friday, January 32nd')