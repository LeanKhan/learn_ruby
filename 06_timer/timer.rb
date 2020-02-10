class Timer

    def initialize
      @seconds = 0
    end

    def seconds
      @seconds
    end

    def seconds= seconds
      @seconds = seconds
    end

    def time_string
      secs = @seconds % 60
      mins = ((@seconds - secs) / 60) % 60
      hours = ((@seconds - mins) / 3600) % 24
      "#{hours.to_s.rjust(2, '0')}:#{mins.to_s.rjust(2, '0')}:#{secs.to_s.rjust(2, '0')}"
    end

end
