# Sprockets Memcache Cache

A cache store for Sprockets which utilities Memcache.


## Usage

Gemfile:

```ruby
gem "sprockets"
gem "sprockets-cache-memcache"
# ...
```

config.ru:

```ruby
require "sprockets-cache-memcache"
env = Sprockets::Environment.new
env.cache = Sprockets::Cache::MemcacheStore.new(memcache, "sprockets")
# ...
```

Where the first argument is a Memcache::Client connection, and the other (which is optional) is a key prefix.
