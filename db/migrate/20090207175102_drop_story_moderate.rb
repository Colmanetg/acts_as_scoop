class DropStoryModerate < ActiveRecord::Migration
  def self.up
	execute "drop table storymoderate"
  end

  def self.down
  end
end
