require 'ruble'

command t(:stop_app_servers) do |cmd|
  cmd.output = :discard
  cmd.input = :none
  cmd.invoke do |context|
    require 'rallycap'
    cap(context, 'deploy:stop')
  end
end
