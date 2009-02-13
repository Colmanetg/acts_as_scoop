# == Schema Information
#
# Table name: rdf_channels
#
#  rid              :integer(6)      not null
#  rdf_link         :string(200)     default(""), not null
#  link             :string(200)
#  title            :string(60)
#  description      :text
#  image_title      :string(40)
#  image_url        :string(200)
#  image_link       :string(200)
#  form_title       :string(40)
#  form_description :text(255)
#  form_name        :string(20)
#  form_link        :string(200)
#  enabled          :integer(1)      default(1)
#  submitted        :integer(1)
#  submittor        :string(50)
#

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
