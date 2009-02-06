class SubscriptionPayment < ActiveRecord::Base
  validates_presence_of :uid
  validates_numericality_of :uid, :allow_nil => false, :only_integer => true
  validates_presence_of :cost
  validates_numericality_of :cost, :allow_nil => false
  validates_presence_of :pay_type
  validates_length_of :pay_type, :allow_nil => false, :maximum => 10
  validates_presence_of :auth_date
  validates_numericality_of :paid, :allow_nil => true, :only_integer => true
end
