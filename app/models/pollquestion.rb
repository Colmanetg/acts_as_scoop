class Pollquestion < ActiveRecord::Base
  validates_presence_of :qid
  validates_length_of :qid, :allow_nil => false, :maximum => 20
  validates_presence_of :question
  validates_length_of :question, :allow_nil => false, :maximum => 255
  validates_numericality_of :voters, :allow_nil => true, :only_integer => true
  validates_numericality_of :archived, :allow_nil => true, :only_integer => true
end
