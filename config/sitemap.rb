# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://fx-traders.herokuapp.com/"

  add records_path, changefreq: 'daily'
  Record.find_each do |record|
    add record_path(record), changefreq: 'daily', lastmod: record.updated_at
  end

  add rules_path, changefreq: 'daily'
  Rule.find_each do |rule|
    add rule_path(rule), changefreq: 'daily', lastmod: rule.updated_at
  end

  User.find_each do |user|
    add user_path(user), changefreq: 'daily', lastmod: user.updated_at
  end

  add root_path, changefreq: 'daily'
  add privacy_policy_path, changefreq: 'daily'
  add disclaimer_path, changefreq: 'daily'

SitemapGenerator::Sitemap.create do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end
end
