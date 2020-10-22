class PagesController < ApplicationController
  before_action :check_for_login

  def home
    @user = User.find_by (params[:id])
  end
end
