require 'ruble'

command t(:clean_up_old_releases) do |cmd|
  cmd.output = :discard
  cmd.input = :none
  cmd.invoke do |context|
    require 'rallycap'
    cap(context, 'deploy:cleanup')
  end
end
