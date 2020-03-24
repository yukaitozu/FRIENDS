class AddQuotesToCharacter < ActiveRecord::Migration[6.0]
  def change
    add_column :characters, :quote, :string
  end
end
