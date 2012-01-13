require 'ruble'

command t(:open_docs) do |cmd|
  cmd.output = :discard
  cmd.input = :none
  cmd.invoke do |context|
    require 'uri'
    url = "http://www.capify.org/index.php/From_The_Beginning"
    context.browser.open(url, :browser => :default)
  end
end
