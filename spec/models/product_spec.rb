# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer
#

require 'rails_helper'

RSpec.describe Product do
  describe 'database columns' do
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :category_id }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :category_id }
  end

  describe 'associations' do
    it { is_expected.to have_many(:users).through(:product_users) }
    it { is_expected.to have_many :discussions }
    it { is_expected.to belong_to :category }
  end
end
