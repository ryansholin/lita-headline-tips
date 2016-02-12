# -*- coding: utf-8 -*-
# rubocop:disable Metrics/LineLength
module Lita
  module Handlers
    class HeadlineTips < Handler
      route(/^headline tip!?$/i, :tip, command: false, help: {
              'headline tip' => 'On writing headlines.'
            })

      TIPS = ['Every thinker puts some portion of an apparently stable world in peril and no one can wholly predict what will emerge in its place.',
                'Every great advance in science has issued from a new audacity of imagination.',
                'Democracy means the belief that humanistic culture should prevail.',
                'It is a familiar and significant saying that a problem well put is half-solved.',
                'Giving and taking of orders modifies actions and results, but does not of itself effect a sharing of purposes, a communication of interests.',
                'Still more important is the fact that the human being acquires a habit of learning. He learns to learn.',
                'A society which is mobile, which is full of channels for the distribution of a change occurring anywhere, must see to it that its members are educated to personal initiative and adaptability.',
                'Society is one word, but many things.',
                'Democracy has to be born anew every generation, and education is its midwife.',
                'Any education given by a group tends to socialize its members, but the quality and value of the socialization depends on the habits and aims of the group.',
                'But all thinking is research, and all research is native, original, with him who carries it on, even if everybody else in the world already is sure of what he is still looking for. '
               ]

      def tip(request)
        request.reply(TIPS.sample)
      end
    end

    Lita.register_handler(HeadlineTips)
  end
end
