require 'ruble'

command 'Clean Up Old Releases' do |cmd|
  cmd.output = :discard
  cmd.input = :none
  cmd.invoke do |context|
    require 'rallycap'
    cap(context, 'deploy:cleanup')
  end
end
