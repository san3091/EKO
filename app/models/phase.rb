class Phase < ActiveRecord::Base
  has_many :items
  belongs_to :project

  @number = 42
end
