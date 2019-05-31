
# feature 'Running web app' do
#   scenario 'can run app and check page content' do
#     visit('/')
#     expect(page).to have_content('up and running!')
#   end
# end

feature 'Registering name' do
  scenario 'Can enter name and register' do
    visit('/')
    fill_in 'Enter name', with: 'Piers'
    click_button('Submit')
    expect(page).to have_content('Piers')
  end
end

feature 'playing the game' do
  scenario 'present choices to player' do
    visit('/registered')
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end

  scenario 'player chooses one option' do
    visit('/registered')
    click_button('Rock')
    expect(page).to have_content('Rock vs...')
  end

end
