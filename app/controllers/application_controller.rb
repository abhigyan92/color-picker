class ApplicationController < ActionController::Base

	before_action :set_user

	private
		def set_user
      if !cookies.key?('user_name')
        user = User.create(remote_ip: request.remote_ip)
        cookies[:user_name] = user.name
      end

    end
end
