class RenameFullfilledtoFulfilled < ActiveRecord::Migration[7.1]
  def change
    rename_column :orders, :fullfilled, :fulfilled
  end
end
