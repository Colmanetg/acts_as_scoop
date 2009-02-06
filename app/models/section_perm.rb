class SectionPerm < ActiveRecord::Base
  validates_presence_of :section
  validates_length_of :section, :allow_nil => false, :maximum => 30
  validates_numericality_of :default_sect_perm, :allow_nil => true, :only_integer => true
end
