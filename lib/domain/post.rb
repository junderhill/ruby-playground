require 'json'

module Domain
  class Post

    attr_accessor :id
   
    def initialize(id)
      @id = id
    end

    def self.from_json(json)
      deserialized = JSON.parse(json)
      if deserialized.empty?
        raise ArgumentError
      end
      Post.new(deserialized['id'])
    end

  end
end
