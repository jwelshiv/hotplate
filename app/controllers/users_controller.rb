class UsersController < ApplicationController
  before_filter :lookup_user
  respond_to :html, :json

  def profile

  end

  private

  def lookup_user
    @user = params[:id].present? ? User.find(params[:id]) : current_user
    redirect_to :back, notice: 'No user found' unless @user.present?
  end
end