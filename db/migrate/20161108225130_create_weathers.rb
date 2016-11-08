class CreateWeathers < ActiveRecord::Migration[5.0]
  def change
    create_table :weathers do |t|
      t.float :high_temp
      t.float :low_temp
      t.float :wind_chill
      t.string :date_of_weather
      t.timestamps
    end
  end
end
