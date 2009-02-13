# == Schema Information
#
# Table name: vars
#
#  name        :string(32)      default(""), not null
#  value       :text
#  description :text
#  type        :string(5)       default("text"), not null
#  category    :string(128)     default(""), not null
#

class Var < ActiveRecord::Base
  validates_presence_of :name
  validates_length_of :name, :allow_nil => false, :maximum => 32
  validates_presence_of :category
  validates_length_of :category, :allow_nil => false, :maximum => 128
end
