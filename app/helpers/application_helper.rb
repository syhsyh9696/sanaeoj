module ApplicationHelper
  def markdown(text)
    if text == nil
      return 
    end
    renderer = Redcarpet::Render::HTML.new(hard_wrap: true, escape_html: false)
    options = {
      autolink: true,
      no_intra_emphasis: true,
      fenced_code_blocks: true,
      lax_html_blocks: true,
      strikethrough: true,
      superscript: true
    }
    Redcarpet::Markdown.new(renderer, options).render(text).html_safe
  end
end
