class UserBrew < ApplicationRecord
  belongs_to :user
  belongs_to :brewery
end
