class AddStoryidToComments < ActiveRecord::Migration
  def self.up
    add_column :comments, :story_id, :integer
    Story.find(:all).each do |s|
	execute "update comments set story_id=#{s.id} where sid='#{s.sid}'"
    end
  end

  def self.down
    remove_column :comments, :story_id
  end
end
