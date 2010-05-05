require 'ruble'

command 'Start App Servers' do |cmd|
  cmd.output = :discard
  cmd.input = :none
  cmd.invoke do |context|
    require 'rallycap'
    cap(context, 'deploy:start')
  end
end
