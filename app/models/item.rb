class Item < ActiveRecord::Base
  validates :name, presence: true
  validates :expiration, presence: true

  belongs_to :user
end