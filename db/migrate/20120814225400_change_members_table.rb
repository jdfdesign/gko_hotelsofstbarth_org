class ChangeMembersTable < ActiveRecord::Migration
  def up
    remove_column :members, :slug
    remove_column :members, :meta_title
    remove_column :members, :meta_description
    remove_column :members, :options
    remove_column :members, :published_at
    remove_column :members, :section_id
    remove_column :members, :site_id
    rename_table :members, :member_options
  end
end
