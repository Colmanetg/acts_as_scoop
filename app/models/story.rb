class Story < ActiveRecord::Base
  validates_presence_of :sid
  validates_length_of :sid, :allow_nil => false, :maximum => 20
  validates_presence_of :tid
  validates_length_of :tid, :allow_nil => false, :maximum => 20
  validates_presence_of :aid
  validates_numericality_of :aid, :allow_nil => false, :only_integer => true
  validates_length_of :title, :allow_nil => true, :maximum => 100
  validates_length_of :dept, :allow_nil => true, :maximum => 100
  validates_presence_of :time
  validates_presence_of :writestatus
  validates_numericality_of :writestatus, :allow_nil => false, :only_integer => true
  validates_presence_of :hits
  validates_numericality_of :hits, :allow_nil => false, :only_integer => true
  validates_presence_of :section
  validates_length_of :section, :allow_nil => false, :maximum => 30
  validates_presence_of :displaystatus
  validates_numericality_of :displaystatus, :allow_nil => false, :only_integer => true
  validates_numericality_of :commentstatus, :allow_nil => true, :only_integer => true
  validates_presence_of :totalvotes
  validates_numericality_of :totalvotes, :allow_nil => false, :only_integer => true
  validates_presence_of :score
  validates_numericality_of :score, :allow_nil => false, :only_integer => true
  validates_presence_of :rating
  validates_numericality_of :rating, :allow_nil => false, :only_integer => true
  validates_length_of :attached_poll, :allow_nil => true, :maximum => 20
  validates_presence_of :sent_email
  validates_numericality_of :sent_email, :allow_nil => false, :only_integer => true
  validates_inclusion_of :edit_category, :in => [true, false], :allow_nil => false, :message => ActiveRecord::Errors.default_error_messages[:blank]
end
