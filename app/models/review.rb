class Review < ActiveRecord::Base

  validates_presence_of :ad_id
  validates_presence_of :content

end
