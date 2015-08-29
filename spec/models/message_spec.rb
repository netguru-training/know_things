require 'rails_helper'

RSpec.describe Message do
  describe 'database columns' do
    it { is_expected.to have_db_column :discussion_id }
    it { is_expected.to have_db_column :content }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of :discussion_id }
    it { is_expected.to validate_presence_of :content }
  end

  describe 'associations' do
    it { is_expected.to belong_to :discussion }
  end
end
