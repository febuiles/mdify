require_relative "lib/mdify/version"

Gem::Specification.new do |s|
  s.name        = "mdify"
  s.version     = Mdify::VERSION
  s.licenses    = ["MIT"]
  s.summary     = "Preview Markdown documents with your browser"
  s.description = "mdify is a tool for previewing Markdown documents right in your browser, with a nice stylesheet."
  s.authors     = ["Federico Builes"]
  s.email       = "federico.builes@gmail.com"
  s.homepage    = "https://github.com/febuiles/mdify"

  s.required_ruby_version = ">= 3.0"
  s.require_paths = ["lib"]
  s.executables   = ["mdify"]
  s.files = Dir["lib/**/*.rb", "vendor/**/*", "bin/*", "README.md", "LICENSE*"]

  s.add_dependency "redcarpet", "~> 3.6"

  s.add_development_dependency "minitest", "~> 5.20"
  s.add_development_dependency "rake", "~> 13.0"
end
