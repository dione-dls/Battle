require_relative '../lib/game'

describe Game, :game do

  subject { Game.new(player, player) }
  let(:player) { instance_double Player, reduce_health: nil }

  describe '#initialize' do
    it 'takes two arguments when created' do
      expect(Game).to respond_to(:new).with(2).arguments
    end
  end

  describe '#attack' do
    it 'reduces opponents health' do
      subject.attack(player)
      expect(player).to have_received(:reduce_health)
    end
  end
end
