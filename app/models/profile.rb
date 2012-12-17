class Profile
  include Mongoid::Document
  field :user_id, :type => Integer
  field :is_public, :type => Boolean
  field :avatar, :type => String
  field :first_name, :type => String
  field :last_name, :type => String
end