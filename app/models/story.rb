# == Schema Information
#
# Table name: stories
#
#  sid           :string(20)      default(""), not null
#  tid           :string(20)      default(""), not null
#  aid           :integer(11)     default(0), not null
#  title         :string(100)
#  dept          :string(100)
#  time          :datetime        not null
#  introtext     :text
#  bodytext      :text
#  writestatus   :integer(1)      default(0), not null
#  hits          :integer(1)      default(0), not null
#  section       :string(30)      default(""), not null
#  displaystatus :integer(1)      default(0), not null
#  commentstatus :integer(1)
#  totalvotes    :integer(11)     default(0), not null
#  score         :integer(11)     default(0), not null
#  rating        :integer(11)     default(0), not null
#  attached_poll :string(20)
#  sent_email    :integer(1)      default(0), not null
#  edit_category :boolean(1)      not null
#

class Story < ActiveRecord::Base
  has_many :comments
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
