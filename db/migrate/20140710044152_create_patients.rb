class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients, :primary_key => :patient_id do |t|
    	t.string :name
    	t.string :address
    	t.integer :age
    	t.string :gender

      t.timestamps
    end
  end
end
