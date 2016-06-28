class ChoreDutySerializer < ActiveModel::Serializer
  attributes :id, :done_on, :duration
  has_one :user
  has_one :chore
end
