class SubscriptionInfo < ActiveRecord::Base
  validates_presence_of :uid
  validates_numericality_of :uid, :allow_nil => false, :only_integer => true
  validates_presence_of :expires
  validates_numericality_of :expires, :allow_nil => false, :only_integer => true
  validates_presence_of :created
  validates_presence_of :last_updated
  validates_length_of :updated_by, :allow_nil => true, :maximum => 50
  validates_presence_of :active
  validates_numericality_of :active, :allow_nil => false, :only_integer => true
end
