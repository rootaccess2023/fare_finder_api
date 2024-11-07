class AddConnectionsToLrt1 < ActiveRecord::Migration[7.0]
  def change
    add_column :lrt1s, :connections, :jsonb, default: []
    #Ex:- :default =>''
  end
end
