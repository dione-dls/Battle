require_relative '../lib/game'

describe Game do
  let(:player) { instance_double Player, reduce_health: nil }

  describe '#attack' do
    it 'reduces opponents health' do
      subject.attack(player)
      expect(player).to have_received(:reduce_health)
    end
  end
end
