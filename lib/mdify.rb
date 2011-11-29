require 'rubygems'
require 'tempfile'
require 'redcarpet'
require 'launchy'

require 'mdify/renderer'

module Mdify
  VERSION = "0.4"

  def self.preview(filename)
    Renderer.new(filename).render
  end
end
