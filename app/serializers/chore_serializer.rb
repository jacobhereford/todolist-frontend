class ChoreSerializer < ActiveModel::Serializer
  attributes :id, :chore, :where, :when, :to_be_done_by
end
