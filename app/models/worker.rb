class Worker < ApplicationRecord
  belongs_to :worker_type
  has_many :medical_center_type

  validates :first_name, :last_name, :phone_number, :email, :presence => true

  def full_name
    first_name + " " + last_name
  end

end
