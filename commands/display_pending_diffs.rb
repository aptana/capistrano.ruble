require 'ruble'

command 'Display Pending Diffs' do |cmd|
  cmd.key_binding = 'OPTION+COMMAND+c'
  cmd.output = :create_new_document
  cmd.input = :none
  cmd.invoke =<<-EOF
require_cmd cap
cap -q deploy:pending:diff 2> >(CocoaDialog progressbar --indeterminate --title 'Capistrano' --text 'Working (deploy:pending:diff…)')
EOF
end
