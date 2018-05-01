RSpec.feature "Entering players" do
  scenario "Each can enter their names" do
    visit "/"
    fill_in('player1', :with => 'Charlene')
    fill_in('player2', :with => 'Dione')
    click_button 'Submit'
    expect(page).to have_text("Player 1's name is Charlene")
    expect(page).to have_text("Player 2's name is Dione")
  end
end
