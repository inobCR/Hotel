class Room < ApplicationRecord
  has_many :term
  has_many :client, through: :term

  validates :room_number, presence: true,
                          uniqueness: true,
                          numericality: { greater_than_or_equal_to: 0 }                       
  validates :floor, presence: true,
            numericality: { greater_than_or_equal_to: -1 }                       
            
  validates :quantity_of_beds, presence: true,
                               numericality: { greater_than_or_equal_to: 1 }                       
  validates :price, numericality: { greater_than_or_equal_to: 0 }

  STATUSES = [:normal, :higher, :highest]
  enum standard: STATUSES
end
