require "tmpdir"
require "redcarpet"

require "mdify/version"
require "mdify/renderer"

module Mdify
  def self.preview(filename)
    Renderer.new(filename).render
  end
end
