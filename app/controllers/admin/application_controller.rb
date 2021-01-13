module Admin
  class ApplicationController < Administrate::ApplicationController
    include Authenticable
    include Administrate::Punditize

    before_action :authenticate_admin

    def authenticate_admin
      redirect_to :root unless current_user.try(:superadmin?)
    end
  end
end
