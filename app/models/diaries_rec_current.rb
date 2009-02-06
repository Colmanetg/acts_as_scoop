class DiariesRecCurrent < ActiveRecord::Base
  validates_length_of :sid, :allow_nil => true, :maximum => 20
  validates_numericality_of :score, :allow_nil => true
  validates_numericality_of :votes, :allow_nil => true, :only_integer => true
  validates_numericality_of :nonus, :allow_nil => true, :only_integer => true
  validates_numericality_of :expired, :allow_nil => true, :only_integer => true
  validates_length_of :country, :allow_nil => true, :maximum => 2
end
