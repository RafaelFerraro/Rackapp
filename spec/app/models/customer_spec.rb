require 'spec_helper'

describe Customer do
  describe '.all' do
    it 'lists all of customers' do
      expect(described_class.all).to eq(described_class::CUSTOMERS)
    end
  end
end