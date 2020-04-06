class DropEpisodesCharacters < ActiveRecord::Migration[6.0]
 def up
    drop_table :episodes_characters
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
