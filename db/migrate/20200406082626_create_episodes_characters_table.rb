class CreateEpisodesCharactersTable < ActiveRecord::Migration[6.0]
  def change
    create_table :episodes_characters, id: false do |t|
      t.belongs_to :episode
      t.belongs_to :character
    end
  end
end
