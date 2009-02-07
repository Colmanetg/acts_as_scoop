class ConvertCommentsToNestedSet < ActiveRecord::Migration
  def self.up
#    add_column :comments, :lft, :integer
#    add_column :comments, :rgt, :integer
#    add_column :comments, :root_id, :integer
# add_column :comments, :parent_id, :integer
# add_column :comments, :id, :serial

    
    # Convert existing tree to nested set with scope
    Comment.reset_column_information # So the new root ids get saved
    Comment.find(:all).each do |c|
   #   execute "update comments set parent_id=#{c.id} where pid=#{c.cid} and sid='#{c.sid}'"
    end
    #Comment.renumber_all
    Comment.roots.each do |r|
      r.all_children.each do |c|
        c.update_attribute(:root_id, r.id)
      end
      r.update_attribute(:root_id, r.id)
    end
  end

  def self.down
    remove_column :comments, :id
    remove_column :comments, :parent_id

    remove_column :comments, :lft
    remove_column :comments, :rgt
    remove_column :comments, :root_id
  end

end
