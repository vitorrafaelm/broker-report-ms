require 'rails_helper'

RSpec.describe Client, type: :model do
  describe '#validations' do
    subject { create(:client) }
    let!(:property) { create(:property) }

    present_attributes = [:client_identifier, :full_name, :document_type, :document_number, :email,
      :phone]

    present_attributes.each do |attribute|
      it { is_expected.to validate_presence_of(attribute).on(:create) }
    end

    present_attributes.each do |attribute|
      it 'Client should not be valid' do
        subject[attribute] = ''
        expect(subject).not_to be_valid
        expect(subject.errors[attribute]).to include("can't be blank")
      end
    end

    it { should validate_uniqueness_of(:client_identifier) }
  end

  describe 'Client associations' do
    it { should have_many(:propertie) }
    it { should have_one(:address) }
  end
end
