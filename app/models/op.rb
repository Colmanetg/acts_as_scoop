# == Schema Information
#
# Table name: ops
#
#  op           :string(50)      default(""), not null
#  template     :string(30)      default(""), not null
#  func         :string(50)
#  is_box       :integer(1)      default(0)
#  enabled      :integer(1)      default(1)
#  perm         :string(50)      default("")
#  aliases      :string(255)     default(""), not null
#  urltemplates :text            not null
#  description  :text
#

class Op < ActiveRecord::Base
  validates_presence_of :op
  validates_length_of :op, :allow_nil => false, :maximum => 50
  validates_presence_of :template
  validates_length_of :template, :allow_nil => false, :maximum => 30
  validates_length_of :func, :allow_nil => true, :maximum => 50
  validates_numericality_of :is_box, :allow_nil => true, :only_integer => true
  validates_numericality_of :enabled, :allow_nil => true, :only_integer => true
  validates_length_of :perm, :allow_nil => true, :maximum => 50
  validates_presence_of :aliases
  validates_length_of :aliases, :allow_nil => false, :maximum => 255
  validates_presence_of :urltemplates
end
