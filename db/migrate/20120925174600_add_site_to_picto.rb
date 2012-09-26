class AddSiteToPicto < ActiveRecord::Migration
  def up
    add_column :pictos, :site_id, :integer
    add_index :pictos, :site_id 
  end
  
  def down
    remove_index :pictos, :site_id
    remove_column :pictos, :site_id
  end
end
