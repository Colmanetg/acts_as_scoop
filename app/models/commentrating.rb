# == Schema Information
#
# Table name: commentratings
#
#  uid         :integer(1)      default(0), not null
#  rating      :integer(11)     default(0), not null
#  cid         :integer(15)     default(0), not null
#  sid         :string(30)      default(""), not null
#  rating_time :datetime
#  rater_ip    :string(16)      default(""), not null
#

class Commentrating < ActiveRecord::Base
  validates_presence_of :uid
  validates_numericality_of :uid, :allow_nil => false, :only_integer => true
  validates_presence_of :rating
  validates_numericality_of :rating, :allow_nil => false, :only_integer => true
  validates_presence_of :cid
  validates_numericality_of :cid, :allow_nil => false, :only_integer => true
  validates_presence_of :sid
  validates_length_of :sid, :allow_nil => false, :maximum => 30
  validates_presence_of :rater_ip
  validates_length_of :rater_ip, :allow_nil => false, :maximum => 16
end
