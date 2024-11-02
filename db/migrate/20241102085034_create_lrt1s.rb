class CreateLrt1s < ActiveRecord::Migration[7.0]
  def change
    create_table :lrt1s do |t|
      t.string :name
      t.float :distance_from_start
      t.references :line, null: false, foreign_key: true

      t.timestamps
    end
  end
end
