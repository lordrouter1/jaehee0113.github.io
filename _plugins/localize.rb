=begin
    Localization Plugin

    Developed by Jae Hee Lee @ 2017

    Dependencies: jekyll-polyglot

    Please make sure you have the necessary dependency before using this custom tag.   
=end

module Jekyll
  class LocalizeTag < Liquid::Tag

    # Lookup allows access to the page/post variables through the tag context
    def lookup(context, name)
        lookup = context
        name.split(".").each { |value| lookup = lookup[value] }
        lookup
    end

    def initialize(tag_name, variables, tokens)
    	super
        @variables = variables.split(" ")
        @string = @variables[0]
        @words = JSON.parse(IO.read(File.join(File.dirname(__FILE__), '../assets/json/localization.json')))
        @word = @words[@string]
        @record = 'nothing'
    end

    def render(context)
        @language = "#{lookup(context, 'site.active_lang')}"
        @word.each do |record|
            if record.key?(@language)
                @record = record[@language]
                break
            end
        end
        "#{@record}"
    end
  end
end

Liquid::Template.register_tag('localize', Jekyll::LocalizeTag)
