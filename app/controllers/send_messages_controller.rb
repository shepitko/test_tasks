class SendMessagesController < ApplicationController

  def index
    @users = User.all
  end

  def msgs
    @users = User.not_visited(params[:day])
    @users.each{|user| UserMailer.send_msgs(user).deliver_now }
    redirect_to action: "index"
  end

end
