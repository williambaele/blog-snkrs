class AddRetailSneaker < ActiveRecord::Migration[7.0]
  def change
    add_column :sneakers, :retail, :integer
  end
end
