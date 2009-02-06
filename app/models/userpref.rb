class Userpref < ActiveRecord::Base
  validates_presence_of :uid
  validates_numericality_of :uid, :allow_nil => false, :only_integer => true
  validates_presence_of :prefname
  validates_length_of :prefname, :allow_nil => false, :maximum => 200
end
