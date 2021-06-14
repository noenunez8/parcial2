class Guard < ApplicationRecord
  belongs_to :worker
  belongs_to :medical_center_type

  validates :guard_date, :presence => true, :uniqueness => true

end
