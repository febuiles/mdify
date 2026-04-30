module Mdify
  HTML_TEMPLATE_PATH = File.expand_path("../../vendor/template.html", __dir__)

  class Renderer
    MARKDOWN_OPTIONS = {
      autolink: true,
      fenced_code_blocks: true,
      tables: true,
      strikethrough: true,
      superscript: true,
      no_intra_emphasis: true,
      space_after_headers: true
    }.freeze

    attr_reader :title, :content

    def initialize(filename)
      @title = File.basename(filename)
      @content = File.read(filename)
    end

    def render
      markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, MARKDOWN_OPTIONS)
      html = markdown.render(@content)
      document = render_html(@title, html)
      open_in_browser(write_html(document))
    end

    protected

    def open_in_browser(path)
      opener = RbConfig::CONFIG["host_os"] =~ /darwin/i ? "open" : "xdg-open"
      system(opener, path)
    end

    def render_html(title, html)
      template = File.read(HTML_TEMPLATE_PATH)
      template.gsub("{{ title }}") { title }.sub("{{ body }}") { html }
    end

    def write_html(contents)
      dir = Dir.mktmpdir("mdify")
      path = File.join(dir, "#{File.basename(@title, ".*")}.html")
      File.write(path, contents)
      path
    end
  end
end
