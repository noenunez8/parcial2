class Appointment < ApplicationRecord
  belongs_to :worker
  belongs_to :medical_center_type
end
