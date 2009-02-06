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
