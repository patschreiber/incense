class DateUtil

  def self.format_for_database( month, day, year )
    # TODO Fix this, it's jank
    date  = "#{month}-#{day}-#{year}".to_date.to_s(:db)

    return date
  end

  def self.humanize_date( month, day, year )

    if month == "" && day == "" && year == ""
      date = nil
    else
      date  = "#{month}-#{day}-#{year}".to_date
    end

    return date
  end

end