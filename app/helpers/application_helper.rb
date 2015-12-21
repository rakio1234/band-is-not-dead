module ApplicationHelper

  private

  def parse_as_html(text)
    return if text.blank?

    html = escape_as_html(text)
    html = parse_newline_as_html(html)

    html
  end

  def escape_as_html(text)
    ERB::Util.html_escape(text)
  end

  def parse_newline_as_html(html)
    html.gsub(/\r\n|\r|\n/, "<br>").html_safe
  end
end
