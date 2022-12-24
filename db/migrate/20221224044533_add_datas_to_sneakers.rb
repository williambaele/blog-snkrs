class AddDatasToSneakers < ActiveRecord::Migration[7.0]
  def change
    add_column :sneakers, :name, :string
    add_column :sneakers, :sku, :string
    add_column :sneakers, :description, :text
    add_column :sneakers, :drop_date, :date
  end
end
