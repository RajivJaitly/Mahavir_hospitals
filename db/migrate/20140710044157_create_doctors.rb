class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors, :primary_key => :doctor_id do |t|
    	t.string :name
    	t.string :address
    	t.integer :age
    	t.string :gender
    	t.string :speciality
      t.timestamps
    end
  end
end
