class LogInfo < ActiveRecord::Base
  validates_presence_of :log_type
  validates_length_of :log_type, :allow_nil => false, :maximum => 30
  validates_presence_of :log_item
  validates_length_of :log_item, :allow_nil => false, :maximum => 30
  validates_length_of :description, :allow_nil => true, :maximum => 255
  validates_inclusion_of :extended, :in => [true, false], :allow_nil => false, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_presence_of :uid
  validates_numericality_of :uid, :allow_nil => false, :only_integer => true
  validates_length_of :ip_address, :allow_nil => true, :maximum => 30
  validates_presence_of :log_date
end
