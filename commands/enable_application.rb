require 'ruble'

command t(:enable_application) do |cmd|
  cmd.output = :discard
  cmd.input = :none
  cmd.invoke do |context|
    require 'rallycap'
    cap(context, 'deploy:web:enable')
  end
end
