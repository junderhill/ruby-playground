require 'rspec'
require 'domain/post'
require 'json'
include Domain

describe Post, 'from_json' do
  context 'with populated json' do
    it 'should return a populated object' do
      json = {id: 'abc123'}.to_json
      post = Post.from_json(json)
      
      expect(post.id).to eq('abc123')
    end 
  end
end
