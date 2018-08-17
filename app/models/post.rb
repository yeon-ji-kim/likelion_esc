class Post < ActiveRecord::Base
    has_many :post_comments
    belongs_to :user 
    mount_uploader :image, ImageUploader #이미지 첨부용
    paginates_per 15
   # searchable do
    #    text :title, :default_boost
     #   text :content
    #end ==> 검색용
  
end
