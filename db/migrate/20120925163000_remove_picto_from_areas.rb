class RemovePictoFromAreas < ActiveRecord::Migration
  def up
    remove_column :areas, :picto_uid
    add_column :member_options, :map_uid, :string
    
  end
  
  def down
    add_column :areas, :picto_uid, :string
    remove_column :member_options, :map_uid
  end
end
