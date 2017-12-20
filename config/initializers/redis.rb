require "redis"
require "redis/objects"
require "redis/hash_key"
require "redis/list"

Redis.current = Redis.new(host: "localhost", port: 6379)
