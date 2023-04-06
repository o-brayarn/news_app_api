class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :image, :category
end
