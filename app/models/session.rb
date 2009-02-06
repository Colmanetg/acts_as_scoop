class Session < ActiveRecord::Base
  validates_presence_of :last_accessed
  validates_numericality_of :length, :allow_nil => true, :only_integer => true
end
