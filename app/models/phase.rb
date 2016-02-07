class Phase < ActiveRecord::Base
  has_many :items, dependent: :destroy
  belongs_to :project
end
