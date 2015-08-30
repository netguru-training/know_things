require 'rails_helper'

RSpec.describe User do
  describe 'associations' do
    it { is_expected.to have_many :product_users }
    it { is_expected.to have_many :messages }
    it { is_expected.to have_many(:products).through(:product_users) }
  end
end
