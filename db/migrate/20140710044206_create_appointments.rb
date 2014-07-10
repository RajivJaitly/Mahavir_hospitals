class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
    	t.string :patient_name
    	t.string :doctor_name
    	t.date :date
    	t.time :time

      t.timestamps
    end
  end
end
