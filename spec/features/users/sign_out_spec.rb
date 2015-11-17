# Feature: Sign out
#   As a user
#   I want to sign out
#   So I can protect my account from unauthorized access
<<<<<<< HEAD
feature 'Sign out', :omniauth do
=======
feature 'Sign out', :devise do
>>>>>>> 9f35aceee3e5cb45a3e7d537f52f16af035aff00

  # Scenario: User signs out successfully
  #   Given I am signed in
  #   When I sign out
  #   Then I see a signed out message
  scenario 'user signs out successfully' do
<<<<<<< HEAD
    signin
    click_link 'Sign out'
    expect(page).to have_content 'Signed out'
  end

end
=======
    user = FactoryGirl.create(:user)
    signin(user.email, user.password)
    expect(page).to have_content 'Signed in successfully.'
    click_link 'Sign out'
    expect(page).to have_content 'Signed out successfully.'
  end

end


>>>>>>> 9f35aceee3e5cb45a3e7d537f52f16af035aff00
