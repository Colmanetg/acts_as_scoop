class CacheTime < ActiveRecord::Base
  validates_presence_of :resource
  validates_length_of :resource, :allow_nil => false, :maximum => 50
  validates_presence_of :last_update
  validates_numericality_of :last_update, :allow_nil => false, :only_integer => true
end
