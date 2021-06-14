class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.datetime :appointmment_date
      t.references :worker, null: false, foreign_key: true
      t.references :medical_center_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
