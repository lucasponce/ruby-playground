module Hawkular

  module Alerts
    extend self
    def check
      puts 'Hawkular::Alerts::check'
    end
    def report
      puts 'Hawkular::Alerts::report'
      check
    end
  end

  module Plugin
    extend Alerts
    def self.init
      puts 'Hawkular::Plugin::init'
      report
    end
  end

end

puts 'Call to Hawkular::Alerts::check'
Hawkular::Alerts::check

puts 'Call to Hawkular::Alerts::report'
Hawkular::Alerts::report

puts 'Call to Hawkular::Plugin::init'
Hawkular::Plugin::init


