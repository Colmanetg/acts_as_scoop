class User < ActiveRecord::Base
  validates_presence_of :uid
  validates_numericality_of :uid, :allow_nil => false, :only_integer => true
  validates_length_of :nickname, :allow_nil => true, :maximum => 50
  validates_length_of :realname, :allow_nil => true, :maximum => 50
  validates_length_of :realemail, :allow_nil => true, :maximum => 50
  validates_length_of :origemail, :allow_nil => true, :maximum => 50
  validates_length_of :fakeemail, :allow_nil => true, :maximum => 50
  validates_length_of :homepage, :allow_nil => true, :maximum => 100
  validates_length_of :passwd, :allow_nil => true, :maximum => 12
  validates_length_of :mode, :allow_nil => true, :maximum => 10
  validates_length_of :posttype, :allow_nil => true, :maximum => 10
  validates_length_of :bio, :allow_nil => true, :maximum => 255
  validates_length_of :sig, :allow_nil => true, :maximum => 160
  validates_numericality_of :mailreplies, :allow_nil => true, :only_integer => true
  validates_numericality_of :trustlev, :allow_nil => true, :only_integer => true
  validates_numericality_of :threshold, :allow_nil => true, :only_integer => true
  validates_numericality_of :score, :allow_nil => true, :only_integer => true
  validates_numericality_of :points, :allow_nil => true, :only_integer => true
  validates_numericality_of :commentsort, :allow_nil => true, :only_integer => true
  validates_numericality_of :defaultpoints, :allow_nil => true, :only_integer => true
  validates_length_of :perms, :allow_nil => true, :maximum => 255
  validates_length_of :perm_group, :allow_nil => true, :maximum => 50
  validates_length_of :mojo, :allow_nil => true, :maximum => 5
  validates_presence_of :creation_ip
  validates_length_of :creation_ip, :allow_nil => false, :maximum => 16
  validates_presence_of :creation_time
  validates_length_of :newpasswd, :allow_nil => true, :maximum => 12
  validates_inclusion_of :is_new_account, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_presence_of :country
  validates_length_of :country, :allow_nil => false, :maximum => 2
end
