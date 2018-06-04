class ApplicationController < ActionController::Base
  
  protect_from_forgery prepend: true
	before_action :set_user

	private
		def set_user
      if !cookies.key?('user_name')
        user = User.create(remote_ip: request.remote_ip)
        cookies[:user_name] = user.name
      end
      @user = User.find_by(name: cookies[:user_name])

    end
end
