class Review < ActiveRecord::Base
  belongs_to :book
  validates :reply, presence: true
  validates :by, presence: true
end