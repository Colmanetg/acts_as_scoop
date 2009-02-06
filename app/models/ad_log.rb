class AdLog < ActiveRecord::Base
  validates_presence_of :req_num
  validates_numericality_of :req_num, :allow_nil => false, :only_integer => true
  validates_presence_of :req_time
  validates_numericality_of :req_time, :allow_nil => false, :only_integer => true
  validates_presence_of :requestor
  validates_numericality_of :requestor, :allow_nil => false, :only_integer => true
  validates_presence_of :request_ip
  validates_length_of :request_ip, :allow_nil => false, :maximum => 16
  validates_presence_of :req_type
  validates_length_of :req_type, :allow_nil => false, :maximum => 20
end
