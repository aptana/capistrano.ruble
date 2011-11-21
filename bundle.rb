require 'ruble'

bundle 'Capistrano' do |bundle|
  bundle.author = 'Mark Cornick'
  bundle.contact_email_rot_13 = 'znex@ivtrg.pbz'
  bundle.repository = "git://github.com/aptana/capistrano.ruble.git"
  bundle.description =  <<END
Ported from TextMate Bundle written by Mark Cornick:

Original TextMate bundle Copyright (C) 2008 Mark Cornick of Viget Labs (http://www.viget.com/)
END

  bundle.menu 'Capistrano' do |main_menu|
    main_menu.command 'Deploy'
    main_menu.separator
    main_menu.command 'Open Capistrano Documentation'
    main_menu.separator
    main_menu.menu 'Application Servers' do |submenu|
      submenu.command 'Restart App Servers'
      submenu.command 'Start App Servers'
      submenu.command 'Stop App Servers'
    end
    main_menu.menu 'Database Servers' do |submenu|
      submenu.command 'Deploy With Migrations'
      submenu.command 'Migrate Database'
    end
    main_menu.menu 'Web Servers' do |submenu|
      submenu.command 'Disable Application'
      submenu.command 'Enable Application'
    end
    main_menu.menu 'Pending Operations' do |submenu|
      submenu.command 'Display Pending Commits'
      submenu.command 'Display Pending Diffs'
    end
    main_menu.menu 'Maintenance' do |submenu|
      submenu.command 'Rollback'
      submenu.command 'Clean Up Old Releases'
    end
  end
end
