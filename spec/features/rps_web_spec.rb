
feature 'Register name' do
  scenario 'can run app and check page content' do
    visit('/')
    expect(page).to have_content('up and running!')

  end

end
