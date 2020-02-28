require 'spec_helper'
require './app'

RSpec.describe PageView, type: :model do

  let (:visit) { create(:visit) }

  context 'Validations' do
    context 'valid factories present' do
      it { expect(build(:page_view, visit_id: visit.id)).to be_valid }
    end

    context 'visit_id' do
      context 'should be valid' do
        let(:valid) { build(:page_view, visit_id: visit.id) }
        it { expect(valid).to be_valid }
      end

      context 'should be invalid' do
        let(:invalid) { build(:page_view, visit_id: nil) }
        it { expect(invalid).not_to be_valid }
      end
    end
  end

  context 'Associations' do
    it { should belong_to(:visit).without_validating_presence }
  end
end
