module Jekyll

  module Filters
    def date_to_day_ordinal(date)
      case date.day
      when 1, 21, 31 then "st"
      when 2, 22     then "nd"
      when 3, 23     then "rd"
      else "th"
      end
    end

    def date_to_single_digit_day(date)
      date.day.to_i.to_s
    end

    def date_to_english_html_string(date)
      date.strftime("%A the #{date_to_single_digit_day(date)}<sup>#{date_to_day_ordinal(date)}</sup> of %B, %Y")
    end

    def date_to_short_english_html_string(date)
      date.strftime("#{date_to_single_digit_day(date)}<sup>#{date_to_day_ordinal(date)}</sup> of %B, %Y")
    end

  end
end
