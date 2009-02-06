class SubscriptionType < ActiveRecord::Base
  belongs_to :perm_group, :class_name => 'PermGroup', :foreign_key => :perm_group_id
  validates_presence_of :cost
  validates_numericality_of :cost, :allow_nil => false
  validates_presence_of :max_time
  validates_numericality_of :max_time, :allow_nil => false, :only_integer => true
  validates_presence_of :renewable
  validates_numericality_of :renewable, :allow_nil => false, :only_integer => true
end
