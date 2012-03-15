require 'ruble'

bundle t(:bundle_name) do |bundle|
  bundle.author = 'Mark Cornick'
  bundle.contact_email_rot_13 = 'znex@ivtrg.pbz'
  bundle.copyright = "Original TextMate bundle Copyright (C) 2008 Mark Cornick of Viget Labs (http://www.viget.com/)"
  bundle.description = t(:bundle_description)

  bundle.menu t(:bundle_name) do |main_menu|
    main_menu.command t(:deploy)
    main_menu.separator
    main_menu.command t(:open_docs)
    main_menu.separator
    main_menu.menu t(:application_servers) do |submenu|
      submenu.command t(:restart_app_servers)
      submenu.command t(:start_app_servers)
      submenu.command t(:stop_app_servers)
    end
    main_menu.menu t(:database_servers) do |submenu|
      submenu.command t(:deploy_with_migrations)
      submenu.command t(:migrate_database)
    end
    main_menu.menu t(:web_servers) do |submenu|
      submenu.command t(:disable_application)
      submenu.command t(:enable_application)
    end
    main_menu.menu t(:pending_operations) do |submenu|
      submenu.command t(:display_pending_commits)
      submenu.command t(:display_pending_diffs)
    end
    main_menu.menu t(:maintenance) do |submenu|
      submenu.command t(:rollback)
      submenu.command t(:clean_up_old_releases)
    end
  end
end
