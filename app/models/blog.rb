class Blog
  include Mongoid::Document
  field :title, type: String
  field :body, type: String
  field :author, type: String
end