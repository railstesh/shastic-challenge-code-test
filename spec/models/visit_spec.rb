require 'spec_helper'
require './app'

RSpec.describe Visit, type: :model do
  context 'Validations' do
    context 'valid factories present' do
      it { expect(build(:visit)).to be_valid }
    end

    context 'evid' do
      context 'should be valid' do
        let(:valid) { build(:visit, evid: 'evid_966634dc-0bf6-1ff7-f4b6-08000c95c670') }
        it { expect(valid).to be_valid }
      end

      context 'should be invalid' do
        let(:invalid) { build(:visit, evid: 'test') }
        it { expect(invalid).not_to be_valid }
      end
    end
  end

  context 'Callbacks' do
    context 'when created' do

      let(:visit) { create(:visit, evid: 'evid_966634dc-0bf6-1ff7-f4b6-08000c95c670')}

      it 'should clean up the evid value' do
        expect(visit.evid).to eql('966634dc-0bf6-1ff7-f4b6-08000c95c670')
      end
    end
  end

  context 'Associations' do
    it { should have_many(:page_views) }
  end
end
