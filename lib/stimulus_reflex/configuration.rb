# frozen_string_literal: true

module StimulusReflex
  class << self
    def configure
      yield configuration
    end

    def configuration
      @configuration ||= Configuration.new
    end

    alias_method :config, :configuration
  end

  class Configuration
    attr_accessor :on_failed_sanity_checks, :parent_channel

    def initialize
      @on_failed_sanity_checks = :exit
      @parent_channel = "ApplicationCable::Channel"
    end
  end
end
