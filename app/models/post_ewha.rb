class PostEwha < ActiveRecord::Base
    has_many :post_comment_ewhas
    belongs_to :user
    mount_uploader :image, ImageUploader
    paginates_per 15
    #searchable do
       # text :title, :default_boost
        #text :content
    #end
end
