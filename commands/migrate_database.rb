require 'ruble'

command t(:migrate_database) do |cmd|
  cmd.output = :discard
  cmd.input = :none
  cmd.invoke do |context|
    require 'rallycap'
    cap(context, 'deploy:migrate')
  end
end
