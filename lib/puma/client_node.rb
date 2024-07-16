# frozen_string_literal: true

require 'red-black-tree'

module Puma
  class ClientNode < ::RedBlackTree::Node
    def <=>(other)
      data.env.fetch("MIN_VRUNTIME", 0) <=> other.data.env.fetch("MIN_VRUNTIME", 0)
    end
  end
end
