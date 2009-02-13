# == Schema Information
#
# Table name: blocks
#
#  bid         :string(30)      default(""), not null
#  block       :text
#  aid         :string(20)
#  description :text
#  category    :string(128)     default("general"), not null
#  theme       :string(32)      default("default"), not null
#  language    :string(10)      default("en"), not null
#

class Block < ActiveRecord::Base
  validates_presence_of :bid
  validates_length_of :bid, :allow_nil => false, :maximum => 30
  validates_length_of :aid, :allow_nil => true, :maximum => 20
  validates_presence_of :category
  validates_length_of :category, :allow_nil => false, :maximum => 128
  validates_presence_of :theme
  validates_length_of :theme, :allow_nil => false, :maximum => 32
  validates_presence_of :language
  validates_length_of :language, :allow_nil => false, :maximum => 10
end
