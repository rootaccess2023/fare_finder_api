class AddConnectionsToLrt2 < ActiveRecord::Migration[7.0]
  def change
    add_column :lrt2s, :connections, :jsonb
  end
end
