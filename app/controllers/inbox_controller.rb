class InboxController < ApplicationController
  def index
  	@messages = Message.where('receiver_id = ?', current_user.id)
  end
end
