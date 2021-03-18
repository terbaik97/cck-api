module PaperTrail
  class AppConfigVersion < ::PaperTrail::Version
    define_split_table_for('AppConfig')
  end
end
