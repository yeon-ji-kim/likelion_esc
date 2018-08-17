class PostCommentEwha < ActiveRecord::Base
    belongs_to :post_ewha
    belongs_to :user
end
