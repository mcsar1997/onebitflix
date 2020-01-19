class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :validatable

  has_many :reviews
  has_many :favorites
  has_many :players
  
  validates :name, presence: true, on: :update
end
