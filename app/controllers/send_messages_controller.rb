class SendMessagesController < ApplicationController

  def index
    @users = User.all
  end

end
