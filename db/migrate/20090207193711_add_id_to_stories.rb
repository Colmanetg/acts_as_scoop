class AddIdToStories < ActiveRecord::Migration
  def self.up
    add_column :stories, :id, :serial
    execute "alter table stories drop primary key"
  end

  def self.down
    remove_column :stories, :id
  end
end
