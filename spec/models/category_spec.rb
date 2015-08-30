# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  parent_id  :integer
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'database columns' do
    it { is_expected.to have_db_column :parent_id }
    it { is_expected.to have_db_column :name }
  end
  describe 'validations' do
    it { is_expected.to validate_presence_of :parent_id }
    it { is_expected.to validate_presence_of :name }
  end

  describe 'associations' do
    it { is_expected.to have_many :products }
    it { is_expected.to have_many :subcategories }
  end
end
