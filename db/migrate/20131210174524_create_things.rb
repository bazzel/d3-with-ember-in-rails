class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.integer :number
      t.string :category
      t.datetime :date

      t.timestamps
    end
  end
end
