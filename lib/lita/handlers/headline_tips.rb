# -*- coding: utf-8 -*-
# rubocop:disable Metrics/LineLength
module Lita
  module Handlers
    class HeadlineTips < Handler
      route(/^headline tip!?$/i, :tip, command: false, help: {
              'headline tip' => 'On writing headlines.'
            })

      TIPS = ['Shocking: Readers absorb the first 3 and last 3 words of a headline. Start strong, finish even stronger.',
                'When should you use a question headline? When it addresses the reader directly.',
                'Be specific: Here are 12 ways to improve your headlines today (Not broad: How to improve your headlines)',
                'Make sure your headlines work out of context. Will they make sense when shared in social media?',
                'More headline tips from Poynter: http://www.poynter.org/2011/10-questions-to-help-you-write-better-headlines/140675/',
                'Omit needless words.',
                'When helpful, use one of these words: Top, Why, How, Will, New, Secret, Future, Your, Best, Worst.',
                'Chartbeat recently disproved some of these tips. Sort of. Get the data: http://blog.chartbeat.com/2015/11/20/youll-never-guess-how-chartbeats-data-scientists-came-up-with-the-single-greatest-headline/',
                'Put yourself in the shoes of your audience and answer their obvious question.',
                'Long headlines can work well, but only the first 65 characters are visible in Google search.',
                'https://imgs.xkcd.com/comics/headlines.png '
               ]

      def tip(request)
        request.reply(TIPS.sample)
      end
    end

    Lita.register_handler(HeadlineTips)
  end
end
