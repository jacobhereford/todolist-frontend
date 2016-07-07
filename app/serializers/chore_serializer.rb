class ChoreSerializer < ActiveModel::Serializer
  attributes :id, :title, :where, :when
  has_one :user
end
