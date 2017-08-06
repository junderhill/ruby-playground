module Domain
  module BaseObject
    def validate(deserialized_hash)
      if deserialized_hash.empty?
        raise ArgumentError
      end
    end

    def from_json(json)
      if json.to_s.empty?
        raise ArgumentError
      end
      hash = JSON.parse(json)
      validate(hash)
      return hash
    end

  end
end