class CreateTables < ActiveRecord::Migration
  def self.up
    `cp #{RAILS_ROOT}/db/schema_base.rb #{RAILS_ROOT}/db/schema.rb`
    Rake::Task['db:schema:load'].invoke
  end

  def self.down
  end
end
