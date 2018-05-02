feature "Entering players" do
  scenario "Each can enter their names" do
    sign_in_and_play
    names = ("Player 1's name is Charlene\nPlayer 2's name is Dione")
    expect(page).to have_text names
  end
end

feature "Hit points" do
  scenario "viewing opponent's hit points" do
    sign_in_and_play
    check_health('100')
  end
end

feature "Attacking Player 2" do
  scenario "attacking Player 2 and getting confirmation" do
    sign_in_and_play
    click_link('Attacking Player 2')
    expect(page).to have_text("You've hit Player 2!")
  end

  scenario 'attacking Player 2 reduces their hp' do
    sign_in_and_play
    click_link('Attacking Player 2')
    save_and_open_page
    expect(find('progress')['value']).to eq('90')
    expect(find('progress')['max']).to eq('100')
    expect(page).to have_text("Player 2's hit points is 90")
  end
end
