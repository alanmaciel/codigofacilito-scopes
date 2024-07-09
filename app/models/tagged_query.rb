class TaggedQuery
  def self.call(scope)
    new(scope)
  end
  def initialize(scope)
    @scope = scope
  end

  def resolve(tag)
    @scope.where(tag: tag)
  end

  # def resolve(tag)
  #   @scope.where("tag LIKE ?", "%#{tag}%")
  # end
end
