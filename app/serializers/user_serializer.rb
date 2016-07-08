#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :chores
end
