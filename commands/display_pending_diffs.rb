require 'ruble'

command 'Display Pending Diffs' do |cmd|
  cmd.key_binding = 'OPTION+COMMAND+c'
  cmd.output = :create_new_document
  cmd.input = :none
  cmd.invoke do
    IO.popen("cap -q deploy:pending:diff", 'r') {|io| io.read }
  end
end
