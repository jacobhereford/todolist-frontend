class CreateChoreDuties < ActiveRecord::Migration
  def change
    create_table :chore_duties do |t|
      t.references :user, index: true, foreign_key: true
      t.references :chore, index: true, foreign_key: true
      t.date :done_on
      t.time :duration

      t.timestamps null: false
    end
  end
end
