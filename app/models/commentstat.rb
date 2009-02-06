class Commentstat < ActiveRecord::Base
  validates_presence_of :uid
  validates_numericality_of :uid, :allow_nil => false, :only_integer => true
  validates_length_of :nickname, :allow_nil => true, :maximum => 50
  validates_presence_of :country
  validates_length_of :country, :allow_nil => false, :maximum => 2
  validates_presence_of :num_comments
  validates_numericality_of :num_comments, :allow_nil => false, :only_integer => true
end
