module Aetherg
  module Array
    def present?
      !self.nil? && !self.empty?
    end
  end
end

Array.send(:include, Aetherg::Array)
