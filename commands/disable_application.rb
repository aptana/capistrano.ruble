require 'ruble'

command 'Disable Application' do |cmd|
  cmd.output = :discard
  cmd.input = :none
  cmd.invoke do |context|
    require 'rallycap'
    cap(context, 'deploy:web:disable')
  end
end
