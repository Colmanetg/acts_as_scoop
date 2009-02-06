class Pollanswer < ActiveRecord::Base
  validates_presence_of :qid
  validates_length_of :qid, :allow_nil => false, :maximum => 20
  validates_presence_of :aid
  validates_numericality_of :aid, :allow_nil => false, :only_integer => true
  validates_length_of :answer, :allow_nil => true, :maximum => 255
  validates_numericality_of :votes, :allow_nil => true, :only_integer => true
end
