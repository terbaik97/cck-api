def app_config_update(settings)
  log("Adding app configs with settings: #{settings} ...")
  
  AppConfig.destroy_all

  app_config = AppConfig.new
  app_config.settings = settings
  app_config.save
end