class Listify < SiteBuilder
  def build
    helper "listify" do |string|
      list = string.split("\n").map do |line|
        first, last = line.split(/\s*:\s*/)
        "<dt>#{first}</dt><dd>#{last}</dd>"
      end
      "<dl>\n#{list.join("\n")}</dl>".html_safe
    end
  end
end
