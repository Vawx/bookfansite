class Book < ActiveRecord::Base
  has_many :reviews
  has_many :ratings
  validates :title, presence: true
  validates :author, presence: true
  validates :price, presence: true
  validates :genre, presence: true
  validates :about, presence: true
  validates :description, presence: true
  validates :image, presence: true
  validates :isbn, presence: true
end
