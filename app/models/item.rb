class Item < ActiveRecord::Base
  has_many :sources
  has_many :likes
  belongs_to :phase
end
