class CreateChores < ActiveRecord::Migration
  def change
    create_table :chores do |t|
      t.string :title
      t.string :where
      t.string :when
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
