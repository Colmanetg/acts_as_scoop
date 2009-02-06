class Cron < ActiveRecord::Base
  validates_presence_of :name
  validates_length_of :name, :allow_nil => false, :maximum => 20
  validates_length_of :func, :allow_nil => true, :maximum => 20
  validates_numericality_of :run_every, :allow_nil => true, :only_integer => true
  validates_numericality_of :enabled, :allow_nil => true, :only_integer => true
  validates_numericality_of :is_box, :allow_nil => true, :only_integer => true
end
