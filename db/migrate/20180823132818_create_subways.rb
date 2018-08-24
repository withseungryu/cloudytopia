class CreateSubways < ActiveRecord::Migration[5.0]
  def change
    create_table :subways do |t|
      t.string :station
      t.string :tonum
      t.string :gate_inner
      t.string :gate_outer
      t.string :toi_info
      t.string :exper

      t.timestamps
    end
  end
end
