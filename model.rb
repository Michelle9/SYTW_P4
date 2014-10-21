class ShortenedUrl
  include DataMapper::Resource

  property :id, Serial
  property :url, Text
  property :to, Text
  property :usuario, Text
end

