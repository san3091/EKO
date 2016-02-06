class Item < ActiveRecord::Base
  has_many :sources
  belongs_to :phase
end
