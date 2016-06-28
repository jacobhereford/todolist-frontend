#
class User < ActiveRecord::Base
  include Authentication
  has_many :chore_duties
end
