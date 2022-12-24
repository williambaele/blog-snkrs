class DataSneakers < ActiveRecord::Migration[7.0]
  def change
    add_column :sneakers, :estimated_ressell, :integer
    add_column :sneakers, :ressell_circle, :text
  end
end
