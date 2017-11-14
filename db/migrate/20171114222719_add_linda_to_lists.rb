class AddLindaToLists < ActiveRecord::Migration[5.0]
  def change
    add_column(:lists, :linda, :string)
  end
end
