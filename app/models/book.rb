class Book < ActiveRecord::Base
  validates :title, presence: true
  validates :author, presence: true
  validates :price, presence: true
  validates :genre, presence: true
  validates :about, presence: true
  validates :description, presence: true
  validates :image, presence: true
  validates :isbn, presence: true
end
