class RemoveFloorsFromProperty < ActiveRecord::Migration[6.1]
  def change
    remove_column :properties, :floors
  end
end
