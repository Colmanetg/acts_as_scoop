# == Schema Information
#
# Table name: ad_types
#
#  type_template       :string(30)      default(""), not null
#  type_name           :string(50)      default(""), not null
#  short_desc          :string(255)     default(""), not null
#  submit_instructions :text
#  max_file_size       :integer(11)
#  max_text1_chars     :integer(5)
#  max_text2_chars     :integer(5)
#  max_title_chars     :integer(5)
#  cpm                 :decimal(7, 2)
#  active              :integer(1)      default(0), not null
#  min_purchase_size   :integer(7)
#  max_purchase_size   :integer(7)      default(1000000)
#  pos                 :integer(5)      default(1), not null
#  allow_discussion    :integer(1)      default(0)
#

class AdType < ActiveRecord::Base
  validates_presence_of :type_template
  validates_length_of :type_template, :allow_nil => false, :maximum => 30
  validates_presence_of :type_name
  validates_length_of :type_name, :allow_nil => false, :maximum => 50
  validates_presence_of :short_desc
  validates_length_of :short_desc, :allow_nil => false, :maximum => 255
  validates_numericality_of :max_file_size, :allow_nil => true, :only_integer => true
  validates_numericality_of :max_text1_chars, :allow_nil => true, :only_integer => true
  validates_numericality_of :max_text2_chars, :allow_nil => true, :only_integer => true
  validates_numericality_of :max_title_chars, :allow_nil => true, :only_integer => true
  validates_numericality_of :cpm, :allow_nil => true
  validates_presence_of :active
  validates_numericality_of :active, :allow_nil => false, :only_integer => true
  validates_numericality_of :min_purchase_size, :allow_nil => true, :only_integer => true
  validates_numericality_of :max_purchase_size, :allow_nil => true, :only_integer => true
  validates_presence_of :pos
  validates_numericality_of :pos, :allow_nil => false, :only_integer => true
  validates_numericality_of :allow_discussion, :allow_nil => true, :only_integer => true
end
