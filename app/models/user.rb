#
class User < ActiveRecord::Base
  include Authentication
  has_many :chores, inverse_of: :user
end
