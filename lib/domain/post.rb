require 'json'
require_relative 'baseObject'

module Domain
  class Post
    extend BaseObject

    attr_accessor :id
   
    def initialize(id)
      @id = id
    end

    def self.from_json(json)
      postHash = super json
      Post.new(postHash['id'])
    end

  end
end
