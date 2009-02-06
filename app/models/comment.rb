class Comment < ActiveRecord::Base
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
