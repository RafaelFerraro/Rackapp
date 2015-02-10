require 'spec_helper'

describe Product do
  describe '.all' do
    it 'returns a list of all products' do
      expect(described_class.all).to eq(described_class::PRODUCTS)
    end
  end
end