# == Schema Information
#
# Table name: diaries_recent_prefs
#
#  uid         :integer(11)     default(0), not null
#  num_diaries :integer(3)      default(0), not null
#

class DiariesRecentPref < ActiveRecord::Base
  validates_presence_of :uid
  validates_numericality_of :uid, :allow_nil => false, :only_integer => true
  validates_presence_of :num_diaries
  validates_numericality_of :num_diaries, :allow_nil => false, :only_integer => true
end
