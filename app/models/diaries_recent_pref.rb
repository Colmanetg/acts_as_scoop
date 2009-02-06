class DiariesRecentPref < ActiveRecord::Base
  validates_presence_of :uid
  validates_numericality_of :uid, :allow_nil => false, :only_integer => true
  validates_presence_of :num_diaries
  validates_numericality_of :num_diaries, :allow_nil => false, :only_integer => true
end
