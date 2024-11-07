class AddConnectionsToMrt3 < ActiveRecord::Migration[7.0]
  def change
    add_column :mrt3s, :connections, :jsonb
  end
end
