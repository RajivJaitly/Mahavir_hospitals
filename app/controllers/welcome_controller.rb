class WelcomeController < ApplicationController
  def index
  end
  
  def create_patient
  end
  
  def create_doctor
  end

  def create_appointment
  	@patients = Patient.all
  	@doctors = Doctor.all
  
  	
  end

  def save_patient
  	Patient.create(name: params[:patient_name], address: params[:patient_address], gender: params[:patient_gender], age: params[:patient_age])
  	redirect_to root_path
  end

  def save_doctor
  	Doctor.create(name: params[:doctor_name], address: params[:doctor_address], gender: params[:doctor_gender], age: params[:doctor_age], speciality: params[:doctor_specialist])
  	redirect_to root_path
  end

  def save_appointment
  	Appointment.create(patient_name: params[:app_pname], doctor_name: params[:app_dname], date: params[:da], time: params[:ti])
  	redirect_to root_path
  end



end
