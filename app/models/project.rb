class Project < ActiveRecord::Base
  has_many :items, through: :phases
  has_many :phases

end
