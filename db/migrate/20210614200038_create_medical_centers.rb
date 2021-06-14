class CreateMedicalCenters < ActiveRecord::Migration[6.1]
  def change
    create_table :medical_centers do |t|
      t.string :name
      t.string :description
      t.string :address
      t.integer :phone_number

      t.timestamps
    end
  end
end
