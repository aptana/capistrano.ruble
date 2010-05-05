require 'ruble'

command 'Deploy' do |cmd|
  cmd.key_binding = 'OPTION+COMMAND+c'
  cmd.output = :discard
  cmd.input = :none
  cmd.invoke do |context|
    require 'rallycap'
    cap(context, 'deploy')
  end
end
