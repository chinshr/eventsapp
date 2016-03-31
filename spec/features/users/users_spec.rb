# Feature: Users
RSpec.feature 'Sign in' do
  background do
    visit new_user_session_path
    find("input[type=email]").click
  end

  scenario "Loads login form" do
    expect(page).to have_css("input[type=email]")
    expect(page).to have_css("input[type=password]")
  end

  given!(:user) { FactoryGirl.create(:user, email: "another_valid@example.com",
                                     password: "valid_password", password_confirmation: "valid_password") }


  scenario "Signs in with valid user" do
    #user = create(:user)
    fill_in "Email", with: "another_valid@example.com"
    fill_in "Password", with: "valid_password"
    find('input[type="submit"]').click

    expect(page).to have_content 'Log out'
  end

  scenario "Fails to sign in unknown users" do
    fill_in "Email", with: "invalid@example.com"
    fill_in "Password", with: "invalid_password"
    find('input[type="submit"]').click

    expect(page).to have_content("Invalid email or password.")
  end

end
