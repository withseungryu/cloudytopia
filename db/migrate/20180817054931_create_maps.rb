class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.string :title
      t.string :score1
      t.string :score2
      t.string :score3
      t.string :score_avg
      t.text :ment
      t.belongs_to :toilet,  foreign_key: true
      
      t.timestamps null: false
    end
  end
end
