class Employee < ActiveRecord::Base
  belongs_to :store

  has_many :actors, dependent: :destroy
  belongs_to :network

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :store, presence: true
  validates :hourly_rate, presence: true, numericality: { greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
end
