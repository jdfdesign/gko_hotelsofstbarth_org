class GlobalizeMembers < ActiveRecord::Migration
  def up
    create_table :member_option_translations do |t|
      t.references :member_option
      t.string :locale
      t.text  :body
      t.text  :rates_policy
      t.text  :cancellation_policy
      t.text  :amenities
      t.text  :rates
      t.text  :main_contact
      t.text  :services
      t.text  :annual_opening
      t.timestamps
    end
    add_index :member_option_translations, [:member_option_id]
  end
  
  def down
    remove_index :member_option_translations, [:member_option_id]
    drop_table :member_option_translations
  end
end
