# -*- coding: utf-8 -*-
# rubocop:disable Metrics/LineLength
module Lita
  module Handlers
    class DeweyQuotes < Handler
      route(/^dewey quote!?$/i, :quote, command: false, help: {
              'Dewey quote' => 'A random quote from John Dewey.'
            })

      QUOTES = ['Every thinker puts some portion of an apparently stable world in peril and no one can wholly predict what will emerge in its place.',
                'Every great advance in science has issued from a new audacity of imagination.',
                'Democracy means the belief that humanistic culture should prevail.',
                'It is a familiar and significant saying that a problem well put is half-solved.',
                'Giving and taking of orders modifies actions and results, but does not of itself effect a sharing of purposes, a communication of interests.',
                'Still more important is the fact that the human being acquires a habit of learning. He learns to learn.',
                'A society which is mobile, which is full of channels for the distribution of a change occurring anywhere, must see to it that its members are educated to personal initiative and adaptability.',
                'Society is one word, but many things.',
                'Any education given by a group tends to socialize its members, but the quality and value of the socialization depends on the habits and aims of the group.',
                'But all thinking is research, and all research is native, original, with him who carries it on, even if everybody else in the world already is sure of what he is still looking for. '
               ]

      def quote(request)
        request.reply(QUOTES.sample)
      end
    end

    Lita.register_handler(DeweyQuotes)
  end
end
