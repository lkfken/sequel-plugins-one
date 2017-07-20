module Sequel
  class NotOneRow < Error
    def initialize(msg='Expected query to produce exactly 1 row!')
      super
    end
  end
end