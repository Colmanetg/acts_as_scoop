class Subsection < ActiveRecord::Base
  validates_presence_of :section
  validates_length_of :section, :allow_nil => false, :maximum => 32
  validates_presence_of :child
  validates_length_of :child, :allow_nil => false, :maximum => 32
  validates_inclusion_of :inheritable, :in => [true, false], :allow_nil => false, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_inclusion_of :invisible, :in => [true, false], :allow_nil => false, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_presence_of :time
end
