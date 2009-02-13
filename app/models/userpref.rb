# == Schema Information
#
# Table name: userprefs
#
#  uid       :integer(11)     default(0), not null
#  prefname  :string(200)     default(""), not null
#  prefvalue :text
#

class Userpref < ActiveRecord::Base
  validates_presence_of :uid
  validates_numericality_of :uid, :allow_nil => false, :only_integer => true
  validates_presence_of :prefname
  validates_length_of :prefname, :allow_nil => false, :maximum => 200
end
