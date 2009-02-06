class PostThrottle < ActiveRecord::Base
  validates_presence_of :uid
  validates_numericality_of :uid, :allow_nil => false, :only_integer => true
  validates_presence_of :created_time
  validates_presence_of :post_lock
  validates_numericality_of :post_lock, :allow_nil => false, :only_integer => true
  validates_presence_of :lock_timeout
  validates_numericality_of :lock_timeout, :allow_nil => false, :only_integer => true
end
