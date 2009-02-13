# == Schema Information
#
# Table name: section_perms
#
#  group_id          :string(50)      default(""), not null
#  section           :string(30)      default(""), not null
#  sect_perms        :text
#  default_sect_perm :integer(1)      default(0)
#

class SectionPerm < ActiveRecord::Base
  validates_presence_of :section
  validates_length_of :section, :allow_nil => false, :maximum => 30
  validates_numericality_of :default_sect_perm, :allow_nil => true, :only_integer => true
end
