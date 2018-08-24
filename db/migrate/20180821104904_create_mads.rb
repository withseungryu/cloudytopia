class CreateMads < ActiveRecord::Migration[5.0]
  def change
    create_table :mads do |t|
      t.string :title
      t.string :score1
      t.string :score2
      t.string :score3
      t.string :score_avg
      t.text :ment
      t.belongs_to :toilet, foreign_key: true

      t.timestamps
    end
  end
end
