class CreateProductTable < ActiveRecord::Migration
  def self.up
    create_table :products, :force => true do |t|
      t.references :lead
      t.string :product_name
      t.string :product_price
    end

  end

  def self.down
    drop_table :products
  end
end
