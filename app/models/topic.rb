class Topic < ActiveRecord::Base
  validates_presence_of :tid
  validates_length_of :tid, :allow_nil => false, :maximum => 20
  validates_length_of :image, :allow_nil => true, :maximum => 30
  validates_length_of :alttext, :allow_nil => true, :maximum => 40
  validates_numericality_of :width, :allow_nil => true, :only_integer => true
  validates_numericality_of :height, :allow_nil => true, :only_integer => true
end
