class Chore < ActiveRecord::Base
  belongs_to :user, inverse_of: :chores
end
