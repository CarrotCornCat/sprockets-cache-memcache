module Sprockets
  module Cache
    # A simple Memcache cache store.
    #
    #     environment.cache = Sprockets::Cache::MemcacheStore.new($redis)
    #
    class MemcacheStore

      def initialize(memcache_conn, key_prefix = 'sprockets')
        @memcache   = memcache_conn
        @key_prefix = key_prefix
      end

      # Lookup value in cache
      def [](key)
        data = @memcache.get path_for(key)
        Marshal.load data if data
      end

      # Save value to cache
      def []=(key, value)
        @memcache.set path_for(key), Marshal.dump(value)
        value
      end

      private

      def path_for(key)
        "#{@key_prefix}:#{key}"
      end

    end
  end
end
