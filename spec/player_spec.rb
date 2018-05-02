require_relative '../lib/player'

describe Player do
  subject { described_class.new('Dione') }
  let(:other_player) { described_class.new('Will') }

  describe '#name' do
    it 'returns its name' do
      expect(subject.name).to eq 'Dione'
    end
  end

  describe '#health' do
    it 'has a default of 100' do
      expect(subject.health).to eq described_class::DEFAULT_HEALTH
    end

    it 'can be reduced when opponent attacks' do
      subject.reduce_health
      expect(subject.health).to eq 90
    end
  end
end
