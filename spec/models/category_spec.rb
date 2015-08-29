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
  end
end
