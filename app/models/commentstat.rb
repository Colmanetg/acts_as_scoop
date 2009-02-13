# == Schema Information
#
# Table name: commentstats
#
#  uid          :integer(11)     default(0), not null
#  nickname     :string(50)
#  country      :string(2)       default("US"), not null
#  num_comments :integer(21)     default(0), not null
#

class Commentstat < ActiveRecord::Base
  validates_presence_of :uid
  validates_numericality_of :uid, :allow_nil => false, :only_integer => true
  validates_length_of :nickname, :allow_nil => true, :maximum => 50
  validates_presence_of :country
  validates_length_of :country, :allow_nil => false, :maximum => 2
  validates_presence_of :num_comments
  validates_numericality_of :num_comments, :allow_nil => false, :only_integer => true
end
