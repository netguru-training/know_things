class CreateDiscussions < ActiveRecord::Migration
  def change
    create_table :discussions do |t|
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
