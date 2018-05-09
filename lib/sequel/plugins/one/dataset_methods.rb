module Sequel
  module Plugins
    module One
      module DatasetMethods
        def one
          rows = fetch_two
          rows.one? ? rows.first : fail(NotOneRow, "found #{rows.size.zero? ? '0' : '>1'} records with query #{sql}")
        end

        private

        def fetch_two
          limit(2).all
        end
      end
    end
  end
end