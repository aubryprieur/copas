# Activation de Sprockets en premier
activate :sprockets

# Activation des extensions
activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

# Configuration des répertoires
set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

# Pages spéciales
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false
page '/404.html', directory_index: false

# Configuration du site
set :site_url, "https://copas.coop"

# Build
configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
  activate :relative_assets
  set :relative_links, true
end

# Déploiement
activate :deploy do |deploy|
  deploy.build_before = true
  deploy.deploy_method = :git
  deploy.branch = 'gh-pages'
end

# Sitemap
config[:host] = "https://copas.coop"
config[:ignore_sitemap_regex] = /\.(css|js|eot|svg|woff|ttf|png|jpg|jpeg|gif|keep)$/
