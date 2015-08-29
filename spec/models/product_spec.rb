require 'rails_helper'

RSpec.describe Product do
  describe 'database columns' do
    it { should have_db_column :name }
    it { should have_db_column :description }
  end
end
