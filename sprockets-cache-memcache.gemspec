# encoding: utf-8
$:.push File.expand_path("../lib", __FILE__)
require "sprockets-cache-memcache/version"

Gem::Specification.new do |s|
  s.name        = "sprockets-cache-memcache"
  s.version     = Sprockets::Cache::Memcache::VERSION
  s.authors     = ["Christoph Grabo"]
  s.email       = ["chris@dinarrr.com"]
  s.homepage    = "https://github.com/CarrotCornCat/sprockets-cache-memcache"
  s.summary     = %q{A Memcache cache store for Sprockets}
  s.description = %q{A Memcache cache store for Sprockets, built on the base of sprockets-cache-redis }
  s.license     = "MIT"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
