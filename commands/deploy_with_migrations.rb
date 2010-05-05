require 'ruble'

command 'Deploy With Migrations' do |cmd|
  cmd.key_binding = 'OPTION+COMMAND+c'
  cmd.output = :show_as_html
  cmd.input = :none
  cmd.invoke =<<-EOF
require_cmd cap
"${TM_BUNDLE_SUPPORT}/rallycap.rb" deploy:migrations

EOF
end
