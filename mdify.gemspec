Gem::Specification.new do |s|
  s.specification_version = 2 if s.respond_to? :specification_version=
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.rubygems_version = '1.3.5'

  ## Leave these as is they will be modified for you by the rake gemspec task.
  ## If your rubyforge_project name is different, then edit it and comment out
  ## the sub! line in the Rakefile
  s.name              = 'mdify'
  s.version           = '1.2.0'
  s.date              = '2020-12-16'

  ## Make sure your summary is short. The description may be as long
  ## as you like.
  s.summary     = "Preview Markdown documents with your browser"
  s.description = "mdify is a tool for previewing Markdown documents right in your browser, with a nice stylesheet."

  ## List the primary authors. If there are a bunch of authors, it's probably
  ## better to set the email to an email list or something. If you don't have
  ## a custom homepage, consider using your GitHub URL or the like.
  s.authors  = ["Federico Builes"]
  s.email    = 'federico.builes@gmail.com'
  s.homepage = 'http://github.com/febuiles/mdify'

  ## This gets added to the $LOAD_PATH so that 'lib/NAME.rb' can be required as
  ## require 'NAME.rb' or'/lib/NAME/file.rb' can be as require 'NAME/file.rb'
  s.require_paths = %w[lib]

  ## If your gem includes any executables, list them here.
  s.executables = ["mdify"]

  ## List your runtime dependencies here. Runtime dependencies are those
  ## that are needed for an end user to actually USE your code.
  s.add_dependency("redcarpet", "~> 1.9")
  s.add_dependency("launchy")

  ## List your development dependencies here. Development dependencies are
  ## those that are only needed during development


  ## Leave this section as-is. It will be automatically generated from the
  ## contents of your Git repository via the gemspec task. DO NOT REMOVE
  ## THE MANIFEST COMMENTS, they are used as delimiters by the task.
  # = MANIFEST =
  s.files = %w[
    Gemfile
    Gemfile.lock
    README.md
    Rakefile
    bin/mdify
    lib/mdify.rb
    lib/mdify/renderer.rb
    mdify.gemspec
    vendor/template.html
  ]
  # = MANIFEST =

  ## Test files will be grabbed from the file list. Make sure the path glob
  ## matches what you actually use.
  s.test_files = s.files.select { |path| path =~ /^test\/test_.*\.rb/ }
end
