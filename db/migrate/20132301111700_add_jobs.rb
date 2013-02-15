class AddJobs < ActiveRecord::Migration
  def change
    create_table :job_offers do |t|
      t.integer :member_id, :null => false
      t.integer :section_id, :null => false
      t.text :body
      t.string :email
      t.string :name
      t.string :phone
      t.timestamps
    end

    add_index :job_offers, :member_id 
    add_index :job_offers, :section_id
    
    create_table :job_requests do |t|
      t.text :body
      t.string :email
      t.string :lastname
      t.string :firstname
      t.string :phone
      t.date :available_on
      t.text :address
      t.string :curriculum
      t.timestamps
    end
    
  end
end