class AuthorPostSerializer < ActiveModel::Serializer
  attributes :title, :short_content, :tags

  def short_content
    self.object.content.truncate(43)
  end

end
