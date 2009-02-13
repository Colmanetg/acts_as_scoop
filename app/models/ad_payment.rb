# == Schema Information
#
# Table name: ad_payments
#
#  ad_id      :integer(11)     default(0), not null
#  order_id   :string(50)      default(""), not null
#  cost       :decimal(7, 2)   default(0.0), not null
#  pay_type   :string(10)      default(""), not null
#  auth_date  :date            not null
#  final_date :date
#  paid       :integer(1)
#

class AdPayment < ActiveRecord::Base
  validates_presence_of :cost
  validates_numericality_of :cost, :allow_nil => false
  validates_presence_of :pay_type
  validates_length_of :pay_type, :allow_nil => false, :maximum => 10
  validates_presence_of :auth_date
  validates_numericality_of :paid, :allow_nil => true, :only_integer => true
end
