class Item < ActiveRecord::Base
  belongs_to :phase
  belongs_to :project

  def self.get_video_id item
    url = item.url
    sliced = url.split('/')
    sliced[-1]
  end
end
