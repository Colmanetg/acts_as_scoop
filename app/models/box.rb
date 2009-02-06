class Box < ActiveRecord::Base
  validates_presence_of :boxid
  validates_length_of :boxid, :allow_nil => false, :maximum => 50
  validates_presence_of :title
  validates_length_of :title, :allow_nil => false, :maximum => 50
  validates_presence_of :content
  validates_presence_of :template
  validates_length_of :template, :allow_nil => false, :maximum => 39
  validates_numericality_of :user_choose, :allow_nil => true, :only_integer => true
end
