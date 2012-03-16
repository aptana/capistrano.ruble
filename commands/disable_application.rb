require 'ruble'

command t(:disable_application) do |cmd|
  cmd.output = :discard
  cmd.input = :none
  cmd.invoke do |context|
    require 'rallycap'
    cap(context, 'deploy:web:disable')
  end
end
