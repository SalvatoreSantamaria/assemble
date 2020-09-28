class Post
  include Mongoid::Document
  include Mongoid::Timestamps 
  
  field :title, type: String
  field :body, type: String
  field :author, type: String

  has_many :comments, dependent: :destroy
  validates_uniqueness_of :title
  validates_presence_of :title, :body, :author

  paginates_per 10
end
