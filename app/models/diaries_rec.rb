class DiariesRec < ActiveRecord::Base
  validates_length_of :sid, :allow_nil => true, :maximum => 20
  validates_numericality_of :uid, :allow_nil => true, :only_integer => true
  validates_numericality_of :unrec, :allow_nil => true, :only_integer => true
  validates_numericality_of :expired, :allow_nil => true, :only_integer => true
  validates_numericality_of :weight, :allow_nil => true
end
