class Storymoderate < ActiveRecord::Base
  validates_presence_of :sid
  validates_length_of :sid, :allow_nil => false, :maximum => 20
  validates_presence_of :uid
  validates_numericality_of :uid, :allow_nil => false, :only_integer => true
  validates_presence_of :vote
  validates_numericality_of :vote, :allow_nil => false, :only_integer => true
  validates_presence_of :section_only
  validates_length_of :section_only, :allow_nil => false, :maximum => 0
end
