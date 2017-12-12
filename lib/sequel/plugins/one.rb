require_relative 'one/dataset_methods'
require_relative 'one/exceptions'
require_relative 'one/version'

module Sequel
  module Plugins
    module One
      module DatasetMethods
        def one
          rows = fetch_two
          rows.one? ? rows.first : fail(NotOneRow, sql)
        end

        private

        def fetch_two
          limit(2).all
        end
      end
    end
  end
end
