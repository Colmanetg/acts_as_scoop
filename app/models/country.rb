class Country < ActiveRecord::Base
  validates_presence_of :iso
  validates_length_of :iso, :allow_nil => false, :maximum => 2
  validates_presence_of :name
  validates_length_of :name, :allow_nil => false, :maximum => 80
  validates_presence_of :printable_name
  validates_length_of :printable_name, :allow_nil => false, :maximum => 80
  validates_length_of :iso3, :allow_nil => true, :maximum => 3
  validates_numericality_of :numcode, :allow_nil => true, :only_integer => true
end
