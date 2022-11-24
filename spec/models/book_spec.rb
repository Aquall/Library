require 'rails_helper'

RSpec.describe Book, type: :model do
  describe 'validations valid attributes' do
    subject { build(:book) }

    it { is_expected.to validate_presence_of(:name).with_message('must be abided!') }
    it { is_expected.to validate_uniqueness_of(:name).scoped_to(:year).with_message('must be unique!') }
  end

  context 'with invalid attributes' do
    context 'with name too short' do
      subject(:book) { build :book, :invalid_older_year}

      it do
          should validate_numericality_of(:year).
             is_less_than_or_equal_to(DateTime.now.to_date.year)
          end
    end
  end
end