RSpec.feature "Testing infrastructure" do
  scenario "Show correct text" do
    visit "/"
    expect(page).to have_content("Testing infrastructure working!")
  end
end
