describe User do

<<<<<<< HEAD
  before(:each) { @user = FactoryGirl.create(:user) }

  subject { @user }

  it { should respond_to(:name) }

  it "#name returns a string" do
    expect(@user.name).to match 'Test User'
=======
  before(:each) { @user = User.new(email: 'user@example.com') }

  subject { @user }

  it { should respond_to(:email) }

  it "#email returns a string" do
    expect(@user.email).to match 'user@example.com'
>>>>>>> 9f35aceee3e5cb45a3e7d537f52f16af035aff00
  end

end
