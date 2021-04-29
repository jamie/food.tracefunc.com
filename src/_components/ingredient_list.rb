class IngredientList
  def initialize(items)
    @items = items.to_s.split("\n")
  end

  def entries
    @items.map do |item|
      first, last = item.split(/\s*:\s*/)
      <<~HTML
        <dt class="col-sm-3 text-sm-right">#{first}</dt>
        <dd class="col-sm-9 ml-3 ml-sm-auto">#{last}</dd>
      HTML
    end
  end

  def render_in(view_context, &block)
    <<~HTML.html_safe
      <dl class="row">
      #{entries.join("\n")}
      </dl>
    HTML
  end
end
