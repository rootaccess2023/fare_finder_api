class CreateLines < ActiveRecord::Migration[7.0]
  def change
    create_table :lines do |t|
      t.string :name
      t.decimal :speed

      t.timestamps
    end
  end
end
