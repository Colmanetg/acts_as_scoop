# == Schema Information
#
# Table name: sections
#
#  section     :string(30)      default(""), not null
#  title       :string(64)      default(""), not null
#  description :text
#  icon        :string(255)
#

class Section < ActiveRecord::Base
  validates_presence_of :section
  validates_length_of :section, :allow_nil => false, :maximum => 30
  validates_presence_of :title
  validates_length_of :title, :allow_nil => false, :maximum => 64
  validates_length_of :icon, :allow_nil => true, :maximum => 255
end
