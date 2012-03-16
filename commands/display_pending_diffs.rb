require 'ruble'

command t(:display_pending_diffs) do |cmd|
  # cmd.key_binding = 'M1+M3+C'
  cmd.output = :create_new_document
  cmd.input = :none
  cmd.invoke do
    IO.popen("cap -q deploy:pending:diff", 'r') {|io| io.read }
  end
end
