class Township < ApplicationRecord
  belongs_to :city

  validates :name, presence: true
  validates :description, presence: true
  validates :city_id, presence: true
end
