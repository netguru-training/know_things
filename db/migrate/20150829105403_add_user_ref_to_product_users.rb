class AddUserRefToProductUsers < ActiveRecord::Migration
  def change
    add_reference :product_users, :user, index: true, foreign_key: true
  end
end
