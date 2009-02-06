class WhosOnline < ActiveRecord::Base
  validates_presence_of :ip
  validates_length_of :ip, :allow_nil => false, :maximum => 16
  validates_presence_of :uid
  validates_numericality_of :uid, :allow_nil => false, :only_integer => true
  validates_presence_of :last_visit
end
