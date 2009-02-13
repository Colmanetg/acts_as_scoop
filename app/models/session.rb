# == Schema Information
#
# Table name: sessions
#
#  last_accessed :timestamp       not null
#  id            :string(32)      default(""), not null, primary key
#  length        :integer(11)
#  a_session     :text
#

class Session < ActiveRecord::Base
  validates_presence_of :last_accessed
  validates_numericality_of :length, :allow_nil => true, :only_integer => true
end
