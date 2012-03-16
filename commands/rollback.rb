require 'ruble'

command t(:rollback) do |cmd|
  # cmd.key_binding = 'M1+M3+C'
  cmd.output = :discard
  cmd.input = :none
  cmd.invoke do |context|
    require 'rallycap'
    cap(context, 'deploy:rollback')
  end
end
