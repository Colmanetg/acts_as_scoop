class Pollvoter < ActiveRecord::Base
  validates_presence_of :qid
  validates_length_of :qid, :allow_nil => false, :maximum => 20
  validates_presence_of :uid
  validates_numericality_of :uid, :allow_nil => false, :only_integer => true
  validates_presence_of :user_ip
  validates_length_of :user_ip, :allow_nil => false, :maximum => 15
end
