class AddNameToTripTrails < ActiveRecord::Migration[5.1]
  def change
    add_column :triptrails, :name, :string
  end
end
