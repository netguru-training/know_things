# == Schema Information
#
# Table name: messages
#
#  id            :integer          not null, primary key
#  discussion_id :integer
#  content       :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'rails_helper'

RSpec.describe Message do
  describe 'database columns' do
    it { is_expected.to have_db_column :discussion_id }
    it { is_expected.to have_db_column :user_id }
    it { is_expected.to have_db_column :content }
  end

  describe 'associations' do
    it { is_expected.to belong_to :discussion }
    it { is_expected.to belong_to :user }
  end
end
