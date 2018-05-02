RSpec.feature "Entering players" do
  scenario "Each can enter their names" do
    sign_in_and_play
    names = ("Player 1's name is Charlene\nPlayer 2's name is Dione")
    expect(page).to have_text names
  end
end

RSpec.feature "Hit points" do
  scenario "viewing opponent's hit points" do
    sign_in_and_play
    expect(find('progress')['value']).to eq('40')
    expect(find('progress')['max']).to eq('100')
    expect(page).to have_text("Player 2's hit points is 40")
  end
end
