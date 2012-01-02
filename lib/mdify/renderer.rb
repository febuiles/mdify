module Mdify
  HTML_TEMPLATE_PATH = File.join(File.dirname(__FILE__), "..", "..", "vendor", "template.html")

  class Renderer
    attr_reader :title, :content

    def initialize(filename)
      @title = filename.split("/").last
      @content = File.read(filename)
    end

    def render
      html = Redcarpet.new(@content).to_html
      document = render_html(@title, html)
      temp_file = create_temp_file(document)
      if RUBY_PLATFORM.downcase.include?("darwin")
        exec "open #{temp_file}"
      else
        exec "launchy #{temp_file}"
      end
    end

    protected

    def render_html(title, html)
      template_file = File.read(HTML_TEMPLATE_PATH)
      document = template_file.sub(/\{\{ title \}\}/, title)
      document.sub!(/\{\{ body \}\}/, html)
    end

    def create_temp_file(contents)
      temp_file = Tempfile.new("mdify")
      temp_file.write(contents)
      temp_file.close
      temp_file.path
    end
  end
end
