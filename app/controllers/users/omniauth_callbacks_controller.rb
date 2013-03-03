class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  respond_to :json

  def facebook
    provider_callback
  end

  def provider_callback
    @user = User.authenticate_with_oauth(oauth_hash, current_user)

    if @user
      sign_in_and_redirect @user
    else
      session["devise.oauth_info"] = oauth_hash.info
      redirect_to new_user_registration_url
    end
  end

  def failure
    render(json:{status:'error'}, status: 404)
  end

  private

  def oauth_hash
    request.env['omniauth.auth']
  end

end
