module Cronoboost
  module Generators
    ##
    #
    #
    class InstallGenerator < Rails::Generators::Base
      desc 'initialize cronoboost'
      source_root File.expand_path('templates', __dir__)

      def copy_translation_file
        template 'cronoboost_initializer.rb', 'config/initializers/cronoboost.rb'
        template 'cronoboost_setup.rb', 'Cronofile'
        template 'cronoboost_executable', 'bin/cronoboost'
      end
    end
  end
end
