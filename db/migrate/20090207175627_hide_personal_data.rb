class HidePersonalData < ActiveRecord::Migration
  def self.up
	execute "update comments set commentip='0.0.0.0'"
	execute "update commentratings set rater_ip='0.0.0.0'"
	execute "update pollvoters set user_ip='0.0.0.0'"
	execute "update users set realname='fake', realemail='fake', origemail='fake', fakeemail='fake', homepage='fake', passwd='fake', admin_notes='fake'"
	execute "delete from whos_online"
	
  end

  def self.down
  end
end
