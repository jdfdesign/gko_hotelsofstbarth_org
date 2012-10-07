class MergeMembers < ActiveRecord::Migration
  def up
    l = Site.first.member_lists.first
    Site.first.members.each do |m|
      m.section_id = l.id
      m.save!
    end
    Site.first.member_lists.last.destroy
  end
end