class ViewedStory < ActiveRecord::Base
  validates_presence_of :uid
  validates_numericality_of :uid, :allow_nil => false, :only_integer => true
  validates_presence_of :sid
  validates_length_of :sid, :allow_nil => false, :maximum => 20
  validates_presence_of :lastseen
  validates_numericality_of :lastseen, :allow_nil => false, :only_integer => true
  validates_presence_of :highest_idx
  validates_numericality_of :highest_idx, :allow_nil => false, :only_integer => true
  validates_presence_of :hotlisted
  validates_numericality_of :hotlisted, :allow_nil => false, :only_integer => true
end
