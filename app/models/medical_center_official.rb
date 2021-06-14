class MedicalCenterOfficial < ApplicationRecord
  belongs_to :medical_center_type
  has_many :workers
  has_many :appointments
  validates :name, :address, :phone_number, :presence => true
end
