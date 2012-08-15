class AddContentIdToMembers < ActiveRecord::Migration
  def up
    add_column :member_options, :member_id, :integer
    add_column :member_options, :member_type, :string
    add_index :member_options, :member_id
  end
end
