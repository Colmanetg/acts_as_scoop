# == Schema Information
#
# Table name: rdf_items
#
#  rid         :integer(6)      default(0), not null
#  idx         :integer(4)      default(0), not null
#  title       :string(100)
#  link        :string(200)
#  description :text(255)
#

class RdfItem < ActiveRecord::Base
  validates_presence_of :rid
  validates_numericality_of :rid, :allow_nil => false, :only_integer => true
  validates_presence_of :idx
  validates_numericality_of :idx, :allow_nil => false, :only_integer => true
  validates_length_of :title, :allow_nil => true, :maximum => 100
  validates_length_of :link, :allow_nil => true, :maximum => 200
  validates_length_of :description, :allow_nil => true, :maximum => 255
end
