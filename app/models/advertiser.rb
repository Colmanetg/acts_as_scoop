# == Schema Information
#
# Table name: advertisers
#
#  advertisor_id :integer(11)     default(0), not null
#  contact_name  :string(255)     default(""), not null
#  contact_phone :string(20)
#  company_name  :string(255)     default(""), not null
#  snail_mail    :string(255)
#

class Advertiser < ActiveRecord::Base
  validates_presence_of :contact_name
  validates_length_of :contact_name, :allow_nil => false, :maximum => 255
  validates_length_of :contact_phone, :allow_nil => true, :maximum => 20
  validates_presence_of :company_name
  validates_length_of :company_name, :allow_nil => false, :maximum => 255
  validates_length_of :snail_mail, :allow_nil => true, :maximum => 255
end
