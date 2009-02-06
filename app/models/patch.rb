class Patch < ActiveRecord::Base
  validates_presence_of :scoop_ver
  validates_length_of :scoop_ver, :allow_nil => false, :maximum => 20
  validates_presence_of :patch_num
  validates_numericality_of :patch_num, :allow_nil => false, :only_integer => true
  validates_length_of :patch_name, :allow_nil => true, :maximum => 30
  validates_presence_of :patch_type
  validates_length_of :patch_type, :allow_nil => false, :maximum => 10
end
