# == Schema Information
#
# Table name: macros
#
#  name        :string(32)      default(""), not null
#  value       :text
#  description :text
#  category    :string(128)     default(""), not null
#

class Macro < ActiveRecord::Base
  validates_presence_of :name
  validates_length_of :name, :allow_nil => false, :maximum => 32
  validates_presence_of :category
  validates_length_of :category, :allow_nil => false, :maximum => 128
end
