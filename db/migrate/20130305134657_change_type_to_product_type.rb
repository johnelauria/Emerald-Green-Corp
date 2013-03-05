class ChangeTypeToProductType < ActiveRecord::Migration
  def up
  	remove_column :products, :type
  	add_column :products, :product_type, :string
  end

  def down
  	remove_column :products, :product_type
  	add_column :products, :type, :string
  end
end
