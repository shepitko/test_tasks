class SendMsgsJob < ApplicationJob
  queue_as :default

  def perform(*args)
    [1,3,5].each do |day|
      users = User.not_visited(day)
      emails = users.pluck(:email)
      emails.each{|email| UserMailer.send_msgs(email).deliver_now }
    end
  end
end
