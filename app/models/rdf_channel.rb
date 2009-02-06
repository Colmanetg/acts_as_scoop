class RdfChannel < ActiveRecord::Base
  validates_presence_of :rid
  validates_numericality_of :rid, :allow_nil => false, :only_integer => true
  validates_presence_of :rdf_link
  validates_length_of :rdf_link, :allow_nil => false, :maximum => 200
  validates_length_of :link, :allow_nil => true, :maximum => 200
  validates_length_of :title, :allow_nil => true, :maximum => 60
  validates_length_of :image_title, :allow_nil => true, :maximum => 40
  validates_length_of :image_url, :allow_nil => true, :maximum => 200
  validates_length_of :image_link, :allow_nil => true, :maximum => 200
  validates_length_of :form_title, :allow_nil => true, :maximum => 40
  validates_length_of :form_description, :allow_nil => true, :maximum => 255
  validates_length_of :form_name, :allow_nil => true, :maximum => 20
  validates_length_of :form_link, :allow_nil => true, :maximum => 200
  validates_numericality_of :enabled, :allow_nil => true, :only_integer => true
  validates_numericality_of :submitted, :allow_nil => true, :only_integer => true
  validates_length_of :submittor, :allow_nil => true, :maximum => 50
end
