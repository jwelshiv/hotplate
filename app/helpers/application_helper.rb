module ApplicationHelper
  def facebook_sign_in_button
    link_to image_tag('buttons/facebook_signin.png'), user_omniauth_authorize_path(:facebook), :class => "facebook button"
  end
end
