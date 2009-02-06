class Special < ActiveRecord::Base
  validates_presence_of :pageid
  validates_length_of :pageid, :allow_nil => false, :maximum => 50
  validates_presence_of :title
  validates_length_of :title, :allow_nil => false, :maximum => 255
end
