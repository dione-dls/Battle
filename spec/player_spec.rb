require_relative '../lib/player'

describe Player do
  subject { described_class.new('Dione') }

  describe '#name' do
    it 'returns its name' do
      expect(subject.name).to eq 'Dione'
    end
  end

  describe '#health' do
    it 'has a default of 100' do
      expect(subject.health).to eq described_class::DEFAULT_HEALTH
    end
  end
end
