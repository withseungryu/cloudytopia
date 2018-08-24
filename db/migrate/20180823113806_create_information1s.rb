class CreateInformation1s < ActiveRecord::Migration[5.0]
  def change
    create_table :information1s do |t|
    t.string :name
    t.string :title
    t.text :text
      t.timestamps
    end
  end
end
