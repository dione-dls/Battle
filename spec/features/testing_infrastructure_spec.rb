RSpec.feature "Testing infrastructure" do
  scenario "Show correct text" do
    visit "/"
    expect(page).to have_content("Test infrastructure working!")
  end
end
