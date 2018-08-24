class CreateToilets < ActiveRecord::Migration
  def change
    create_table :toilets do |t|
      t.string :division
      t.string :name
      t.string :address
      t.boolean :unisex, default: false
      t.string :maleflusher
      t.string :maleurinal
      t.boolean :malehandicap, default: false
      t.boolean :malechild, default: false
      t.string :femaleflusher
      t.boolean :femalehandicap, default: false
      t.boolean :femalechild, default: false
      t.boolean :manager
      t.string :phonenum
      t.string :time
      t.string :lat
      t.string :lng
      

      t.timestamps
    end
  end
end
