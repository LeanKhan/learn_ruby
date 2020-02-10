class Timer

  attr_accessor :seconds

    def initialize
      @seconds = 0
    end

    def time_string
      secs = @seconds % 60
      mins = ((@seconds - secs) / 60) % 60
      hours = ((@seconds - mins) / 3600) % 24
      "#{hours.to_s.rjust(2, '0')}:#{mins.to_s.rjust(2, '0')}:#{secs.to_s.rjust(2, '0')}"
    end

end
