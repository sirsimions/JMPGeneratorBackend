class AuthSerializer < ActiveModel::Serializer
  attributes :id, :user_name, :role
end