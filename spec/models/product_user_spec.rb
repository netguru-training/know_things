require 'rails_helper'

RSpec.describe ProductUser do
  describe 'database columns' do
    it { should have_db_column :product_id }
  end

  describe 'associations' do
    it { is_expected.to belong_to :product }
  end
end
