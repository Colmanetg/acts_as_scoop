# == Schema Information
#
# Table name: pollvoters
#
#  qid     :string(20)      default(""), not null
#  id      :string(35)      default(""), not null, primary key
#  time    :datetime
#  uid     :integer(11)     default(-1), not null
#  user_ip :string(15)      default(""), not null
#

class Pollvoter < ActiveRecord::Base
  validates_presence_of :qid
  validates_length_of :qid, :allow_nil => false, :maximum => 20
  validates_presence_of :uid
  validates_numericality_of :uid, :allow_nil => false, :only_integer => true
  validates_presence_of :user_ip
  validates_length_of :user_ip, :allow_nil => false, :maximum => 15
end
