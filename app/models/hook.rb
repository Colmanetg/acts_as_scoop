# == Schema Information
#
# Table name: hooks
#
#  hook    :string(50)      default(""), not null
#  func    :string(50)      default(""), not null
#  is_box  :integer(1)      default(0)
#  enabled :integer(1)      default(1)
#

class Hook < ActiveRecord::Base
  validates_presence_of :hook
  validates_length_of :hook, :allow_nil => false, :maximum => 50
  validates_presence_of :func
  validates_length_of :func, :allow_nil => false, :maximum => 50
  validates_numericality_of :is_box, :allow_nil => true, :only_integer => true
  validates_numericality_of :enabled, :allow_nil => true, :only_integer => true
end
