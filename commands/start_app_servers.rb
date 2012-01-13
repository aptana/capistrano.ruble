require 'ruble'

command t(:start_app_servers) do |cmd|
  cmd.output = :discard
  cmd.input = :none
  cmd.invoke do |context|
    require 'rallycap'
    cap(context, 'deploy:start')
  end
end
