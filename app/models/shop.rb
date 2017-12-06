class Shop < ActiveRecord::Base
  has_many :reviews
  belongs_to :user
  belongs_to :place
  has_many :likes

 def like_user(user_id)
   likes.find_by(user_id: user_id)
  end


end
