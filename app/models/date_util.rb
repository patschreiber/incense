class DateUtil

  def self.format_for_database( month, day, year )
    date  = "#{month}-#{day}-#{year}".to_date.to_s(:db)

    return date
  end

  def self.humanize_date( month, day, year )

    if month == "" && day == "" && year == ""
      date = nil
    else
      date  = "#{month}-#{day}-#{year}"
    end

    return date
  end

end