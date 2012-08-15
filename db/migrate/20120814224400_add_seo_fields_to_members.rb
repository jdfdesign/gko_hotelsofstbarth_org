class AddSeoFieldsToMembers < ActiveRecord::Migration
  def up
    add_column :members, :slug, :string
    add_column :members, :meta_title, :string
    add_column :members, :meta_description, :text
    add_column :members, :options, :text
    add_column :members, :published_at, :datetime
    add_index :members, :slug
  end
end
