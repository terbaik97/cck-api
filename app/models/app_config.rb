class AppConfig < ApplicationRecord
  DEFAULTS = {
    LANGUAGE: "en",
    EMAIL_OTP_EXPIRY_IN_MINS: 10
  }
end