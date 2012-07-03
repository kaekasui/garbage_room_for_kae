# coding: utf-8

if Rails.env.production?
  DEFAULT_PROVIDER = "twitter"
else
  DEFAULT_PROVIDER = "twitter"
  # DEFAULT_PROVIDER = "developer"
end
