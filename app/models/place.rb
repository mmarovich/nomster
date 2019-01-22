class Place < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, length: { minimum: 3, maximum: 500}
  validates :description, presence: true
  validates :address, presence: true
end
