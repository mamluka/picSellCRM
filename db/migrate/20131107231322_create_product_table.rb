class CreateProductTable < ActiveRecord::Migration
  def self.up
    create_table :products, :force => true do |t|
      t.references :lead
      t.string :name
      t.string :model
      t.string :brand
      t.decimal :price
    end

  end

  def self.down
    drop_table :products
  end
end
