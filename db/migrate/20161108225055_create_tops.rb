class CreateTops < ActiveRecord::Migration[5.0]
  def change
    create_table :tops do |t|
      t.string :jacket
      t.string :shirt
      t.string :overshirt

      t.timestamps
    end
  end
end
