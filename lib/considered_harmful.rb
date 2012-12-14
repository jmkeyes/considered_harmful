require 'continuation'

module ConsideredHarmful
  VERSION = '0.0.1'

  module SpaghettiCode
    def __label__(label)
      @@__labels__ ||= {}
      callcc { |k| @@__labels__[label.to_sym] = k }
    end

    def __goto__(label)
      if @@__labels__.has_key?(label.to_sym)
        @@__labels__[label.to_sym].call()
      end
    end
  end
end

::Object.send(:include, ConsideredHarmful::SpaghettiCode)
