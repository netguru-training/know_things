class CreateProductUsers < ActiveRecord::Migration
  def change
    create_table :product_users do |t|
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
