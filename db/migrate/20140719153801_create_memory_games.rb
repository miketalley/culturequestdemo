class CreateMemoryGames < ActiveRecord::Migration
  def change
    create_table :memory_games do |t|

      t.timestamps
    end
  end
end
