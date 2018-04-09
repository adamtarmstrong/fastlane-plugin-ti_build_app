require 'fastlane/action'
require_relative '../helper/ti_build_app_helper'

module Fastlane
  module Actions
    class TiBuildAppAction < Action
      def self.run(params)
        system "cd ../"
        system "#{params[:appc_cli]}"
        UI.success("✅ - AppC Build Completed!")
      end

      def self.description
        "Build Axway Appcelerator Mobile Applications from within fastlane"
      end

      def self.authors
        ["Adam Armstrong"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "Leverages appc cli commands to build both iOS and Android Applications built using Axway Appcelerator"
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(
          	key: :appc_cli,
          	env_name: "TI_BUILD_APP_APPC_CLI",
          	description: "Define the exact AppC CLI Command you need to build your app.  Ref: https://docs.axway.com/bundle/Appcelerator_CLI_allOS_en/page/appcelerator_command-line_interface_reference.html#AppceleratorCommand-LineInterfaceReference-iOSbuildoptionsandflags",
          	optional: false,
          	is_string: true
          )
        ]
      end

      def self.is_supported?(platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://docs.fastlane.tools/advanced/#control-configuration-by-lane-and-by-platform
        #
        # [:ios, :mac, :android].include?(platform)
        true
      end
    end
  end
end
