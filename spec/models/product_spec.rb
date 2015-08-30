require 'rails_helper'

RSpec.describe Product do
  describe 'database columns' do
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :description }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of :name }
  end

  describe 'associations' do
    it { is_expected.to have_many :product_users }
    it { is_expected.to have_many have_many(:users).through(:product_users) }
    it { is_expected.to have_many :discussions }
  end
end
