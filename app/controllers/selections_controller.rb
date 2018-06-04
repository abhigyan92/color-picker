class SelectionsController < ApplicationController
  def create
  	@user = User.find_by(name: params[:user_name])
  	@box = Box.find_by(name: params[:box_name])
  	@selection = Selection.create(user_id: @user.id, box_id: @box.id, color: params[:color])

  end
end
