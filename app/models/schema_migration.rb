# == Schema Information
#
# Table name: schema_migrations
#
#  version :string(255)     not null
#

class SchemaMigration < ActiveRecord::Base
  validates_presence_of :version
  validates_length_of :version, :allow_nil => false, :maximum => 255
  validates_uniqueness_of :version
end
