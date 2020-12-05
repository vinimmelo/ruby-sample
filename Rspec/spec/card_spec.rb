class Card
  attr_reader :rank, :suit
  attr_writer :rank

  def initialize(rank, suit)
    @suit = suit
    @rank = rank
  end

end


RSpec.describe Card do
  let(:card) { Card.new('Ace', 'Spades') }

  it 'has a rank' do
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end

  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end
end
