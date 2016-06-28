class CreateChores < ActiveRecord::Migration
  def change
    create_table :chores do |t|
      t.string :chore
      t.string :where
      t.string :when
      t.date :to_be_done_by

      t.timestamps null: false
    end
  end
end
