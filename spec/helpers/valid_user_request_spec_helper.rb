module ValidUserRequestSpecHelper
  def sign_in_as_valid_user_driver
    @user ||= FactoryBot.create :user
    page.driver.post user_session_path, user: { email: @user.email,
                                                password: @user.password }
  end
end
