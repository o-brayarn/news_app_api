class TrendingSerializer < ActiveModel::Serializer
  attributes :id, :belongs_to, :article
end
