# == Schema Information
#
# Table name: comments
#
#  sid        :string(30)      default(""), not null
#  cid        :integer(15)     default(0), not null
#  pid        :integer(15)     default(0), not null
#  date       :datetime
#  rank       :integer(1)
#  subject    :string(50)      default(""), not null
#  comment    :text            not null
#  pending    :integer(1)      default(0)
#  uid        :integer(1)      default(-1), not null
#  points     :decimal(4, 2)
#  lastmod    :integer(1)      default(-1)
#  sig_status :integer(1)      default(1)
#  sig        :string(160)
#  commentip  :string(16)
#  pre_rating :decimal(4, 2)
#

class Comment < ActiveRecord::Base
  belongs_to :story
  acts_as_nested_set :parent_column=>'parent_id', :text_column=>:subject, :scope=>"sid"
  validates_presence_of :sid
  validates_length_of :sid, :allow_nil => false, :maximum => 30
  validates_presence_of :cid
  validates_numericality_of :cid, :allow_nil => false, :only_integer => true
  validates_presence_of :pid
  validates_numericality_of :pid, :allow_nil => false, :only_integer => true
  validates_numericality_of :rank, :allow_nil => true, :only_integer => true
  validates_presence_of :subject
  validates_length_of :subject, :allow_nil => false, :maximum => 50
  validates_presence_of :comment
  validates_numericality_of :pending, :allow_nil => true, :only_integer => true
  validates_presence_of :uid
  validates_numericality_of :uid, :allow_nil => false, :only_integer => true
  validates_numericality_of :points, :allow_nil => true
  validates_numericality_of :lastmod, :allow_nil => true, :only_integer => true
  validates_numericality_of :sig_status, :allow_nil => true, :only_integer => true
  validates_length_of :sig, :allow_nil => true, :maximum => 160
  validates_length_of :commentip, :allow_nil => true, :maximum => 16
  validates_numericality_of :pre_rating, :allow_nil => true
end
