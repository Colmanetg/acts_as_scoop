class PermGroup < ActiveRecord::Base
  belongs_to :perm_group, :class_name => 'PermGroup', :foreign_key => :perm_group_id
  has_many :perm_groups, :class_name => 'PermGroup', :foreign_key => :perm_group_id
  has_many :subscription_types, :class_name => 'SubscriptionType', :foreign_key => :perm_group_id
  validates_numericality_of :default_user_group, :allow_nil => true, :only_integer => true
end
