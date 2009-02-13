# == Schema Information
#
# Table name: patches
#
#  scoop_ver  :string(20)      default(""), not null
#  patch_num  :integer(2)      default(0), not null
#  patch_name :string(30)
#  patch_type :string(10)      default(""), not null
#

class Patch < ActiveRecord::Base
  validates_presence_of :scoop_ver
  validates_length_of :scoop_ver, :allow_nil => false, :maximum => 20
  validates_presence_of :patch_num
  validates_numericality_of :patch_num, :allow_nil => false, :only_integer => true
  validates_length_of :patch_name, :allow_nil => true, :maximum => 30
  validates_presence_of :patch_type
  validates_length_of :patch_type, :allow_nil => false, :maximum => 10
end
