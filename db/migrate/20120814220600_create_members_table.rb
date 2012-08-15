class CreateMembersTable < ActiveRecord::Migration
  def up
    create_table :members, :force => true do |t|
      t.references :section
      t.references :site
      t.references :area
      t.string :category
      t.text :rates_policy
      t.text :cancellation_policy
      t.text :rates
      t.text :main_contact
      t.text :services
      t.string :annual_opening
      t.timestamps
    end
    
    create_table :areas, :force => true do |t|
      t.string :name, :limit => 60
      t.references :site
      t.timestamps
    end
    
  end

  def down
    drop_table :areas
    drop_table :members
  end
end
