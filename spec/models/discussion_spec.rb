# == Schema Information
#
# Table name: discussions
#
#  id         :integer          not null, primary key
#  product_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

require 'rails_helper'

RSpec.describe Discussion do
  describe 'database columns' do
    it { is_expected.to have_db_column :product_id }
    it { is_expected.to have_db_column :user_id }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of :product_id }
    it { is_expected.to validate_presence_of :user_id}
  end

  describe 'associations' do
    it { is_expected.to belong_to :product }
    it { is_expected.to belong_to :user }
    it { is_expected.to have_many :messages }
  end

  describe 'public instance methods' do
    context 'responds to its methods' do
      it { is_expected.to respond_to(:question) }
    end
  end
end
