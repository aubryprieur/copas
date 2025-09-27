source 'https://rubygems.org'

ruby '3.2.0'

gem 'middleman', '~> 4.5'
gem 'middleman-autoprefixer', '~> 3.0'
gem 'middleman-sprockets', '~> 4.1'
gem 'middleman-blog', '~> 4.0'
gem 'middleman-deploy', '~> 2.0.0.pre.alpha', git: 'https://github.com/middleman-contrib/middleman-deploy.git', branch: 'master'

# Dépendances pour middleman-deploy avec Ruby 3.2+
gem 'net-ftp'
gem 'net-sftp'

# Sécurité
gem 'nokogiri', '>= 1.16.0'
gem 'kramdown', '>= 2.4.0'
gem 'rack', '>= 3.0'
gem 'activesupport', '>= 7.0'
gem 'builder', '~> 3.2'
gem 'rexml', '>= 3.2.8'

# Assets
gem 'font-awesome-sass', '~> 6.5'
gem 'bootstrap-sass', '~> 3.4'
gem 'sassc', '~> 2.4'
gem 'jquery-middleman'  # Ajouter cette ligne

# Développement
group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :development, :test do
  gem 'pry-byebug'
end
