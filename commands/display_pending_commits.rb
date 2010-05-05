require 'ruble'

command 'Display Pending Commits' do |cmd|
  cmd.key_binding = 'OPTION+COMMAND+c'
  cmd.output = :discard
  cmd.input = :none
  cmd.invoke do |context|
    require 'rallycap'
    cap(context, 'deploy:pending')
  end
end
