class AdminTool < ActiveRecord::Base
  validates_presence_of :tool
  validates_length_of :tool, :allow_nil => false, :maximum => 20
  validates_presence_of :pos
  validates_numericality_of :pos, :allow_nil => false, :only_integer => true
  validates_presence_of :dispname
  validates_length_of :dispname, :allow_nil => false, :maximum => 60
  validates_presence_of :menuname
  validates_length_of :menuname, :allow_nil => false, :maximum => 60
  validates_presence_of :perm
  validates_length_of :perm, :allow_nil => false, :maximum => 50
  validates_presence_of :func
  validates_length_of :func, :allow_nil => false, :maximum => 50
  validates_numericality_of :is_box, :allow_nil => true, :only_integer => true
end
