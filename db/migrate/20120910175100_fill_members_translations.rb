class FillMembersTranslations < ActiveRecord::Migration
  def up
    MemberOption.all.each do |m|
      m.save!
    end
  end
  
  def down

  end
end