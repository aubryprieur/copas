activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

activate :sprockets

page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false
page '/404.html', directory_index: false

set :site_url, ""

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
  activate :relative_assets
  set :relative_links, true
end

activate :deploy do |deploy|
  deploy.build_before = true
  deploy.deploy_method = :git
end

config[:host] = "https://copas.coop"
config[:ignore_sitemap_regex] = %r[\.(css|js|eot|svg|woff|ttf|png|jpg|jpeg|gif|keep)$]

