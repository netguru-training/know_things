require 'rails_helper'

RSpec.describe Product do
  describe 'database columns' do
    it { should have_db_column :name }
    it { should have_db_column :description }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of :name }
  end

  describe 'associations' do
    it { is_expected.to have_many :product_users }
  end
end
