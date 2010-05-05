require 'ruble'

command 'Rollback' do |cmd|
  cmd.key_binding = 'OPTION+COMMAND+c'
  cmd.output = :discard
  cmd.input = :none
  cmd.invoke do |context|
    require 'rallycap'
    cap(context, 'deploy:rollback')
  end
end
