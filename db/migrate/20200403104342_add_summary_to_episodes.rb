class AddSummaryToEpisodes < ActiveRecord::Migration[6.0]
  def change
    add_column :episodes, :summary, :string
  end
end
