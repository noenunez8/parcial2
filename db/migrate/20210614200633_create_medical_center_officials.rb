class CreateMedicalCenterOfficials < ActiveRecord::Migration[6.1]
  def change
    create_table :medical_center_officials do |t|
      t.string :name
      t.string :description
      t.string :address
      t.integer :phone_number
      t.references :medical_center_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
