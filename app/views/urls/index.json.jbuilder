json.array!(@urls) do |url|
  json.extract! url, :link, :alias
end
