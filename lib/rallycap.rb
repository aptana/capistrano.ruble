def cap(context, the_target)
  context.exit_show_html t(:run_from_studio_project) unless ENV['TM_PROJECT_DIRECTORY']
  context.exit_show_html t(:no_capfile_found_in_0, :directory => ENV['TM_PROJECT_DIRECTORY']) unless File.exist?(File.join(ENV['TM_PROJECT_DIRECTORY'],'Capfile'))
  context.exit_show_html t(:no_target_specified) unless the_target
  
  target = ''
  multistage_dir = File.join(ENV['TM_PROJECT_DIRECTORY'],'config','deploy')
  if File.directory?(multistage_dir)
    stages = Dir.entries(multistage_dir).select{|x| x.match(/\.rb$/)}.collect{|x| x.gsub(/\.rb$/,'')}
    if stages.any?
      require 'ruble/ui'
      selected = Ruble::UI.request_item(:title => t(:multistage), :prompt => t(:please_select_stage), :items => stages)
      target = selected + ' ' if selected
    end
  end
  target += the_target
  
  require 'ruble/terminal'
  Ruble::Terminal.open("cap -v #{target}", ENV['TM_PROJECT_DIRECTORY'])
end