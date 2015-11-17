# Feature: Sign in
#   As a user
#   I want to sign in
#   So I can visit protected areas of the site
<<<<<<< HEAD
feature 'Sign in', :omniauth do

  # Scenario: User can sign in with valid account
  #   Given I have a valid account
  #   And I am not signed in
  #   When I sign in
  #   Then I see a success message
  scenario "user can sign in with valid account" do
    signin
    expect(page).to have_content("Sign out")
  end

  # Scenario: User cannot sign in with invalid account
  #   Given I have no account
  #   And I am not signed in
  #   When I sign in
  #   Then I see an authentication error message
  scenario 'user cannot sign in with invalid account' do
    OmniAuth.config.mock_auth[:twitter] = :invalid_credentials
    visit root_path
    expect(page).to have_content("Sign in")
    click_link "Sign in"
    expect(page).to have_content('Authentication error')
=======
feature 'Sign in', :devise do

  # Scenario: User cannot sign in if not registered
  #   Given I do not exist as a user
  #   When I sign in with valid credentials
  #   Then I see an invalid credentials message
  scenario 'user cannot sign in if not registered' do
    signin('test@example.com', 'please123')
    expect(page).to have_content 'Invalid email or password.'
  end

  # Scenario: User can sign in with valid credentials
  #   Given I exist as a user
  #   And I am not signed in
  #   When I sign in with valid credentials
  #   Then I see a success message
  scenario 'user can sign in with valid credentials' do
    user = FactoryGirl.create(:user)
    signin(user.email, user.password)
    expect(page).to have_content 'Signed in successfully.'
  end

  # Scenario: User cannot sign in with wrong email
  #   Given I exist as a user
  #   And I am not signed in
  #   When I sign in with a wrong email
  #   Then I see an invalid email message
  scenario 'user cannot sign in with wrong email' do
    user = FactoryGirl.create(:user)
    signin('invalid@email.com', user.password)
    expect(page).to have_content 'Invalid email or password.'
  end

  # Scenario: User cannot sign in with wrong password
  #   Given I exist as a user
  #   And I am not signed in
  #   When I sign in with a wrong password
  #   Then I see an invalid password message
  scenario 'user cannot sign in with wrong password' do
    user = FactoryGirl.create(:user)
    signin(user.email, 'invalidpass')
    expect(page).to have_content 'Invalid email or password.'
>>>>>>> 9f35aceee3e5cb45a3e7d537f52f16af035aff00
  end

end
