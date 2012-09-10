class CreatePictosTable < ActiveRecord::Migration
  def up
    create_table :pictos do |t|
      t.string :image_uid
      t.string :image_name
      t.string :type
      t.timestamps
    end
    add_index :pictos, [:image_uid]
    
    create_table :picto_assignments do |t|
      t.integer :position, :null => false, :default => 1
      t.integer :pictable_id, :null => false
      t.string :pictable_type, :null => false, :limit => 40
      t.integer :attachable_id, :null => false
      t.string :attachable_type, :null => false, :limit => 40
      t.timestamps
    end
    add_index :picto_assignments, [:pictable_id, :pictable_type]
    add_index :picto_assignments, [:attachable_id, :attachable_type]
  end
  
  def down
    remove_index :picto_assignments, [:picto_id, :picto_type]
    remove_index :picto_assignments, [:attachable_id, :attachable_type]
    remove_index :pictos, [:image_uid]
    drop_table :pictos
    drop_table :picto_assignments
  end
end