RSpec.feature "Entering players" do
  scenario "Each can enter their names" do
    visit "/"
    fill_in('Player 1', :with => 'Charlene')
    fill_in('Player 2', :with => 'Dione')
    click_button 'Submit'
    expect(page).to have_text("Names saved.")
  end
end
