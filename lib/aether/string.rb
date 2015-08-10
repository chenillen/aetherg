module Aether
  module String
    def camelcase
      return self.gsub(/^./) { |l| l.capitalize } if !match(/[_-]/)
      altered_self = self.downcase.capitalize
      altered_self.scan(/[_-][a-zA-Z]/).each do |match|
        altered_self.gsub!(match, match[1].upcase)
      end

      altered_self
    end

    def camelcase!
      self.replace camel_case
    end

    def filename
      return self.gsub(/-/, "_") if !match(/[A-Z]/)
      altered_self = self.strip

      altered_self.scan(/[A-Z]/).each do |match|
        altered_self.gsub!(match, "_#{match.downcase}")
      end

      altered_self.sub(/^_/, "").gsub(/_{2,}+/, "_").downcase
    end

    def filename!
      self.replace file_name
    end
  end
end

String.send(:include, Aether::String)
