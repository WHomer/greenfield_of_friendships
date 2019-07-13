require_relative 'application_record'

class Friendship < ApplicationRecord

  def to_api
    {
      id: id,
      user_id: user_id,
      friendship_id: friend_id
    }
  end

end