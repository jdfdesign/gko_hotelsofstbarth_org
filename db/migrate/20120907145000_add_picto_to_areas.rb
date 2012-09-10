class AddPictoToAreas < ActiveRecord::Migration
  def up
    add_column :areas, :picto_uid,  :string
  end
  
  def down
    remove_column :areas, :picto_uid
  end
end