# This migration comes from gko_core (originally 20120828174900)
class AddPositionToLanguage < ActiveRecord::Migration
  def up
    unless column_exists?(:languages, :position)
      add_column :languages, :position, :integer, :default => 1
      add_index :languages, [:position, :site_id]
    end
    Site.all.each do |site|
      if default_language = site.languages.get_default
        default_language.move_to_top if default_language.respond_to?(:move_to_top)
      end
      site.languages.not_default.each_with_index do |language, index|
        language.move_to_bottom if default_language.respond_to?(:move_to_bottom)
      end
    end
  end

  def down
    remove_index :languages, [:position, :site_id]
    remove_column :languages, :position
  end
end