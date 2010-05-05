require 'ruble'

command 'Stop App Servers' do |cmd|
  cmd.output = :discard
  cmd.input = :none
  cmd.invoke do |context|
    require 'rallycap'
    cap(context, 'deploy:stop')
  end
end
