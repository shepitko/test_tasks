class UserMailer < ApplicationMailer
  def send_msgs(user)
    @user = User.find(user)
    @user.update!(cnt_msgs: user.cnt_msgs + 1)
  end
end
