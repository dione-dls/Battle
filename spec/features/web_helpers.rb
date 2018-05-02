def sign_in_and_play
  visit "/"
  fill_in('player1', :with => 'Charlene')
  fill_in('player2', :with => 'Dione')
  click_button 'Submit'
end

def check_health(health)
  expect(find('progress')['value']).to eq(health)
  expect(find('progress')['max']).to eq('100')
  expect(page).to have_text("Player 2's hit points is #{health}")
end
