
feature 'Running web app' do
  scenario 'can run app and check page content' do
    visit('/')
    expect(page).to have_content('up and running!')
  end
end

feature 'Registering name' do
  scenario 'Can enter name and register' do
    visit('/enter')
    fill_in 'Enter name', with: 'Piers'
    click_button('Register')
    expect(page).to have_content('Piers')
  end
end
