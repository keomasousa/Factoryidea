class CreateHighScores < ActiveRecord::Migration
  def change
    create_table :high_scores do |t|
      t.references :user, index: true, foreign_key: true
      t.references :idea, index: true, foreign_key: true
      t.integer :vote

      t.timestamps null: false
    end
  end
end
