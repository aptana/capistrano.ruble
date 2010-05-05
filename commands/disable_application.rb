require 'ruble'

command 'Disable Application' do |cmd|
  cmd.output = :show_as_html
  cmd.input = :none
  cmd.invoke =<<-EOF
require_cmd cap
"${TM_BUNDLE_SUPPORT}/rallycap.rb" deploy:web:disable

EOF
end
