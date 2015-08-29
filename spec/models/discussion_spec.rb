require 'rails_helper'

RSpec.describe Discussion do
  describe 'database columns' do
    it { is_expected.to have_db_column :product_id }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of :product_id }
  end

  describe 'associations' do
    it { is_expected.to belong_to :product }
  end
end
