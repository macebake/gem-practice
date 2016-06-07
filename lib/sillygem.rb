require "sillygem/version"

module Sillygem
  require 'rspec/core/formatters/base_text_formatter'
  require 'colorize'

      class SillyFormat < RSpec::Core::Formatters::BaseTextFormatter

        RSpec::Core::Formatters.register self, :example_passed, :example_failed
    # def start(StartNotification)
    # end
    #
  # * Once per example group
  #       def example_group_started(GroupNotification)
  #       end
  #
  # # * Once per example
  #       def example_started(ExampleNotification)
  #       end

  # * One of these per example, depending on outcome
        def example_passed(example)
          # if MacOS.version >= :lion
            output.print ([' 🍺 ',' 🙌 ', ' 😍 '].sample).colorize(:background => :green)
          # else
          #   output.print [' YAY ', ' YAAASS ', ' NICE '].sample
          # end
        end
  #
        def example_failed(example)
          # if MacOS.version >= :lion
            output.print ([' 😨 ', ' 😵 ', ' 🙅 '].sample).colorize(:background => :red)
          # else
          #   output.print [' NOOO ', ' LAME ', ' FFFUUUU '].sample
          # end
        end
  #
  #       def example_pending(ExampleNotification)
  #       end
  #
  # # * Optionally at any time
        # def message(example)
        #   output.print ' OK '
        # end
  #

  # # * At the end of the suite
  #   def stop(ExamplesNotification)
  #   end
  #
  #   def start_dump(NullNotification)
  #   end
  #
  #   def dump_pending(ExamplesNotification)
  #   end
  #
    # def dump_failures(example)
    #   output.print ('helloooooooooooooooooooooooooo')
    # end
  #
    # def dump_summary(example)
    #   output.print ''
    # end
  #
  #   def seed(SeedNotification)
  #   end
  #
    def close(example)
      output.print '________________________¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶________
  ____________________¶¶¶___________________¶¶¶¶_____
  ________________¶¶¶_________________________¶¶¶¶___
  ______________¶¶______________________________¶¶¶__
  ___________¶¶¶_________________________________¶¶¶_
  _________¶¶_____________________________________¶¶¶
  ________¶¶_________¶¶¶¶¶___________¶¶¶¶¶_________¶¶
  ______¶¶__________¶¶¶¶¶¶__________¶¶¶¶¶¶_________¶¶
  _____¶¶___________¶¶¶¶____________¶¶¶¶___________¶¶
  ____¶¶___________________________________________¶¶
  ___¶¶___________________________________________¶¶_
  __¶¶____________________¶¶¶¶____________________¶¶_
  _¶¶_______________¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶______________¶¶__
  _¶¶____________¶¶¶¶___________¶¶¶¶¶___________¶¶___
  ¶¶¶_________¶¶¶__________________¶¶__________¶¶____
  ¶¶_________¶______________________¶¶________¶¶_____
  ¶¶¶______¶________________________¶¶_______¶¶______
  ¶¶¶_____¶_________________________¶¶_____¶¶________
  _¶¶¶___________________________________¶¶__________
  __¶¶¶________________________________¶¶____________
  ___¶¶¶____________________________¶¶_______________
  ____¶¶¶¶______________________¶¶¶__________________
  _______¶¶¶¶¶_____________¶¶¶¶¶_____________________

  '
    end

  # rspec --require /Users/maceybaker/Desktop/makers/gem-practice/silly-format/lib/rspec/formatter/silly/silly_format.rb --format SillyFormat
  end
end
