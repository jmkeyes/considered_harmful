require 'continuation'

module ConsideredHarmful
  VERSION = '0.0.1'

  module SpaghettiCode
    def __label__(label)
      @@__labels__ ||= {}
      callcc { |k| @@__labels__[label] = k }
    end

    def __goto__(label)
      @@__labels__ ||= {}
      if @@__labels__.has_key?(label)
        @@__labels__[label].call()
      end
    end
  end
end

::Object.send(:include, ConsideredHarmful::SpaghettiCode)
