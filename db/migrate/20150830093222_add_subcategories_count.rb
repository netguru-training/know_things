class AddSubcategoriesCount < ActiveRecord::Migration
  def self.up
    add_column :categories, :subcategories_count, :integer, default: 0

    Category.reset_column_information
    Category.find_each do |c|
      c.update_attribute :subcategories_count, c.subcategories.length
    end
  end

  def self.down
    remove_column :categories, :subcategories_count
  end
end
