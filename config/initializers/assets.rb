# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( plugins.css main.css themes.css bootstrap.min.css modernizr-3.3.1.min.js app.js plugins.js jquery-2.2.4.min.js  bootstrap.min.js  welcome.js uiTables.js article.js ckeditor.js formsComponents.js )
