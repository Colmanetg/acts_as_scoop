# == Schema Information
#
# Table name: subscription_types
#
#  type          :string(50)      default(""), not null
#  perm_group_id :string(50)      default(""), not null
#  cost          :decimal(7, 2)   default(0.0), not null
#  max_time      :integer(11)     default(0), not null
#  renewable     :integer(1)      default(1), not null
#  description   :text
#

class SubscriptionType < ActiveRecord::Base
  belongs_to :perm_group, :class_name => 'PermGroup', :foreign_key => :perm_group_id
  validates_presence_of :cost
  validates_numericality_of :cost, :allow_nil => false
  validates_presence_of :max_time
  validates_numericality_of :max_time, :allow_nil => false, :only_integer => true
  validates_presence_of :renewable
  validates_numericality_of :renewable, :allow_nil => false, :only_integer => true
end
