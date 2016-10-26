class CreateJerseys < ActiveRecord::Migration[5.0]
  def change
    create_table :jerseys do |t|
      t.string :team
      t.string :player
      t.string :number
      t.string :price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
