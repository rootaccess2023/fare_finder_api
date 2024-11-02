class CreateMrt3s < ActiveRecord::Migration[7.0]
  def change
    create_table :mrt3s do |t|
      t.string :name
      t.float :distance_from_start
      t.references :line, null: false, foreign_key: true

      t.timestamps
    end
  end
end
