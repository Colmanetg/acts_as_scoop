class Displaycode < ActiveRecord::Base
  validates_presence_of :code
  validates_numericality_of :code, :allow_nil => false, :only_integer => true
  validates_length_of :name, :allow_nil => true, :maximum => 32
end