source :rubygems

group :assets do
 gem 'sass-rails', '~> 3.2.6'
 gem 'coffee-rails', '~> 3.2.2'
 gem 'uglifier', '>= 1.0.3'
end

group :production do
  git "git@github.com:jdfdesign/gko_cms3.git", :tag => "v0.6.40.rc11" do
    gem 'gko_core'
    gem 'gko_auth'
    gem 'gko_documents'
    gem 'gko_inquiries'
    gem "gko_categories"
    gem "gko_stickers"
    gem "gko_blog"
    gem "gko_albums" 
  end
end
#group :development do
#	gem "gko_core", :path => '~/Github/gko_cms3/gko_core'
#	gem "gko_auth", :path => '~/Github/gko_cms3/gko_auth'
#	gem "gko_documents", :path => '~/Github/gko_cms3/gko_documents'
#	gem "gko_inquiries", :path => '~/Github/gko_cms3/gko_inquiries'
#	gem "gko_categories", :path => '~/Github/gko_cms3/gko_categories'
#  gem "gko_stickers", :path => '~/Github/gko_cms3/gko_stickers' 
#  gem "gko_blog", :path => '~/Github/gko_cms3/gko_blog'
#  gem "gko_albums", :path => '~/Github/gko_cms3/gko_albums'
#end    
