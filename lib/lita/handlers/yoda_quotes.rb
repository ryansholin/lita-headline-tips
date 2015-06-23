# -*- coding: utf-8 -*-
# rubocop:disable Metrics/LineLength
module Lita
  module Handlers
    class YodaQuotes < Handler
      route(/^yoda quote!?$/i, :quote, command: false, help: {
              'Yoda quote' => 'Random quote from yoda you will get!'
            })

      QUOTES = ['When nine hundred years old you reach, look as good you will not.',
                'Truly wonderful, the mind of a child is.',
                'That is why you fail.',
                'A Jedi uses the Force for knowledge and defense, never for attack.',
                'Adventure. Excitement. A Jedi craves not these things.',
                'Judge me by my size, do you?',
                'Fear is the path to the dark side…fear leads to anger…anger leads to hate…hate leads to suffering.',
                'Wars not make one great.',
                'Luminous beings are we…not this crude matter.',
                'Do. Or do not. There is no try.'
               ]

      def quote(request)
        request.reply(QUOTES.sample)
      end
    end

    Lita.register_handler(YodaQuotes)
  end
end
