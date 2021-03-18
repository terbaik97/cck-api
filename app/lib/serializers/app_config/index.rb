module Serializers::AppConfig::Index
  class << self
    def hash
      {
        language: AppConfig::DEFAULTS.dig(:LANGUAGE)
      }.compact
    end
  end
end