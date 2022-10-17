class AuthorPostSerializer < ActiveModel::Serializer
  attributes :title, :short_content
  has_many :tags

  def short_content
    self.object.content.truncate(43)
  end

  # def tags
  #   self.object.tags.map do |tag|
  #     {  
  #       name: tag.name  
  #     }
  #   end 
  # end

end
