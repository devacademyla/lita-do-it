module Lita
  # Load Lita Handlers.
  module Handlers
    # Provide Leboufian motivation.
    class DoIt < Handler
      SHIAS = [
        'http://i.giphy.com/10FUfTApAeoZK8.gif',
        'http://i.giphy.com/qvdqF0PGFPfyg.gif',
        'http://i.giphy.com/wCiFka9RsSW9W.gif',
        'http://i.giphy.com/ypO01RIuQ3tHW.gif',
        'http://i.giphy.com/87xihBthJ1DkA.gif'
      ].freeze

      def doit(response)
        response.reply SHIAS.sample
      end

      route(/do\s*it/i, :doit, command: false, help: {
              'do it' => 'Display a motivational Shia'
            })
    end
    Lita.register_handler(DoIt)
  end
end
