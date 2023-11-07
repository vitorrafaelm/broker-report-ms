require 'rails_helper'

RSpec.describe Address, type: :model do
  describe 'associations' do 
    it { is_expected.to  belong_to(:broker)}
  end

  describe 'address is valid' do 
    let(:broker) { create(:broker) }
    let(:address) { create(:address, broker: broker) }
  end


end
