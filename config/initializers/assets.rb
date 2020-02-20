# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
assets = [
  "admin/pages.css",
  "admin/jquery-easing/*.js",
  "admin/jquery-easing/jquery.easing.js",
  "admin/js/*.js",
  "admin/js/demo/*.js",
  "admin/js/demo/datatables-demo.js"
]
Rails.application.config.assets.precompile += assets

Dir.glob(Rails.root.join("app", "assets", "plugins", "**")).each do |path|
  Rails.application.config.assets.paths << path
end


Rails.application.config.assets.precompile += %w( admin.js admin.css index.js)
