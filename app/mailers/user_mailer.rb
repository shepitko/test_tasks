class UserMailer < ApplicationMailer
  def send_msgs(user)
    logger.info "Message has been sent"
  end
end
