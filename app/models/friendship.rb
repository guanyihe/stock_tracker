class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: "User"
  #friend uses user table
end
