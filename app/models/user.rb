class User < ActiveRecord::Base
  # Include default devise modules. Other available are:
  # :confirmable, :lockable, :timeoutable and :omiauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  #게시글 및 댓글
  has_many :posts
  has_many :post_ewhas
  has_many :post_comments
  has_many :post_ewha_comments
  
  #시간표 M대N 관계
  has_many :class_ew_links
  has_many :ewhaclasses, through: :class_ew_links
  
  has_many :class_sm_links
  has_many :smclasses, through: :class_sm_links
  
end