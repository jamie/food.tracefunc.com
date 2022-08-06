require 'open3'

class Converters::Cook < Bridgetown::Converter
  input :cook

  def convert(content, convertible = nil)
    command = "cook recipe read --output-format json"
    stdout, status = Open3.capture2(command, stdin_data: content)
    content_json = JSON.parse(stdout)

    convertible.data[:cook_json] = content_json

    content_md = content_json['steps'].map{|step| "#{step['description']}\n\n" }.join

    Bridgetown::Converters::Markdown.new(@config).convert(content_md, convertible)
  end
end
