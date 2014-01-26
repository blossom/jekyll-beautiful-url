require 'jekyll/beautiful_url/version'

module Jekyll
  class Page
    def to_liquid(attrs = nil)
     further_data = Hash[(attrs || self.class::ATTRIBUTES_FOR_LIQUID).map { |attribute|
        [attribute, send(attribute)]
      }]
      self.data = self.data.deep_merge(further_data)
      if self.site.config['beautiful_url'] == nil or
        self.site.config['beautiful_url']['pages'] == nil or
        self.site.config['beautiful_url']['pages'] == true
        puts 'pages'
        beautiful_url = self.url.sub(/\/index\.html$/, '')
        self.data['url'] = beautiful_url.sub(/\.html$/, '')
      end
      self.data
    end
  end
end

module Jekyll
  class Post
    def to_liquid(attrs = nil)
     further_data = Hash[(attrs || self.class::ATTRIBUTES_FOR_LIQUID).map { |attribute|
        [attribute, send(attribute)]
      }]
      self.data = self.data.deep_merge(further_data)
      if self.site.config['beautiful_url'] == nil or
        self.site.config['beautiful_url']['posts'] == nil or
        self.site.config['beautiful_url']['posts'] == true
        self.data['url'] = self.url.sub(/\.html$/, '')
      end
      self.data
    end
  end
end