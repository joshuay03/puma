# frozen_string_literal: true

require 'red-black-tree'

module Puma
  class ClientNode < ::RedBlackTree::Node
    def <=>(other)
      if other.instance_of? ::RedBlackTree::LeafNode
        1
      else
        data.env.fetch("MIN_VRUNTIME", 0) <=> other.data.env.fetch("MIN_VRUNTIME", 0)
      end
    end
  end
end
