class CreateCoins < ActiveRecord::Migration[6.1]
  def change
    create_table :coins do |t|
      t.string :name
      t.string :api
      t.string :key

      t.timestamps
    end
  end
end
