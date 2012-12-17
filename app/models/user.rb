class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :name, :password, :password_confirmation, :remember_me
  has_many :authentications
  after_create :creation_setup

  def add_authentication(oauth_hash)
    authentications.build({provider:oauth_hash.provider, uid:oauth_hash.uid})
  end

  def self.authenticate_with_oauth(oauth_hash, signed_in_resource=nil)
    user = signed_in_resource
    authentication = Authentication.where(:provider => oauth_hash.provider, :uid => oauth_hash.uid).first
    # New Authentication
    if authentication.nil?
      if user.present?
        user.add_authentication(oauth_hash)
        user.save!
      else
        user = find_by_email(oauth_hash.info.email) || User.new_from_oauth(oauth_hash)
        user.add_authentication(oauth_hash)
        user.save!
      end
    else
      # Authenticating with existing authentication
      user = authentication.user
    end
    user
  end

  def self.new_from_oauth(oauth_hash)
    new_user = User.new({
      email:oauth_hash.info.email,
      name:oauth_hash.extra.raw_info.name,
      password:Devise.friendly_token[0,20]
    })
    new_user
  end

  def profile
    Profile.where(user_id:id).first
  end

  def create_profile
    profile || Profile.create!({
      user_id: self.id,
      is_public: true,
      #avatar: '',
      first_name: self.name.present? ? self.name.split(' ').first : '',
      last_name: self.name.present? ? (self.name.split(' ').count > 1 ? self.name.split(' ')[1] : '') : '',
    })
  end

  private

  def creation_setup
    self.profile || self.create_profile
  end
end
