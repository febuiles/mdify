require 'rubygems'
require 'tempfile'
require 'redcarpet'
require 'launchy'

require 'mdify/renderer'

module Mdify
  VERSION = "1.0.2"

  def self.preview(filename)
    Renderer.new(filename).render
  end
end
