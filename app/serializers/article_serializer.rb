class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :author, :title, :content, :image, :category
end
