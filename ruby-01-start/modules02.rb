module Metrics
  def send_metric
    puts 'Sending a metric...'
  end
  def fetch_metrics
    puts 'Fetching metrics...'
  end
end

module Alerts
  def send_alert
    puts 'Sending an alert...'
  end
  def fetch_alerts
    puts 'Fetching alerts...'
  end
end

class HawkularClient
  include Metrics
  include Alerts
  def connect
    puts 'Connecting to Hawkular server'
  end
  def disconnect
    puts 'Disconnecting...'
  end
end

client = HawkularClient.new
client.connect

client.send_metric
client.send_alert

client.fetch_metrics
client.fetch_alerts

client.disconnect
