use time::Date;
use time::PrimitiveDateTime as DateTime;
use time::Time;
// Returns a DateTime one billion seconds after start.
pub fn after(start: DateTime) -> DateTime {
    let gigasecond:isize = 1000000000;

    // Conversion: From main format to seconds
    let conversion_year: isize = 31556952;
    let conversion_month: isize = 2628000;
    let conversion_day: isize = 86400;
    let conversion_hour: isize = 3600;
    let conversion_minute:isize = 60;

    let mut year:isize = start.year().try_into().unwrap();
    let mut month:isize = {
        let string_month = start.month().to_string();
        
        match string_month.as_str() {
            "January" => 1,
            "Feburary" => 2,
            "March" => 3,
            "April" => 4,
            "May" => 5,
            "June" => 6,
            "July" => 7,
            "August" => 8,
            "September" => 9,
            "October" => 10,
            "November" => 11,
            "December" => 12,
            _ => 0
        }
        
        // This should convert format from Month to u8
    };
    let mut day = start.day();
    let mut hour = start.hour();
    let mut minute = start.minute();
    let mut second = start.second();

    // Write logic here
    let mut total_seconds:isize = {
        let mut total_value:isize = 0;
        
        total_value += isize::from(year) * conversion_year;
        total_value += isize::from(month) * conversion_month;
        total_value += isize::from(day) * conversion_day;
        total_value += isize::from(hour) * conversion_hour;
        total_value += isize::from(minute) * conversion_minute;
        total_value += isize::from(second);

        total_value += gigasecond;

        total_value
    };

    // reset dates and time to 0
    year = {
        let mut output_year = 0;
        while total_seconds >= conversion_year {
            total_seconds -= conversion_year;
            output_year += 1;
        };
        output_year
    };
    month = {
        let mut output_month = 0;
        while total_seconds >= conversion_month {
            total_seconds -= conversion_month;
            output_month += 1
        };
        output_month
    };
    day = {
        let mut output_day = 0;
        while total_seconds >= conversion_day {
            total_seconds -= conversion_day;
            output_day += 1;
        };
        output_day
    };
    hour = {
        let mut output_hour = 0;
        while total_seconds >= conversion_hour {
            total_seconds -= conversion_hour;
            output_hour += 1;
        };
        output_hour
    };
    minute = {
        let mut output_minute = 0;
        while total_seconds >= conversion_minute{
            total_seconds -= conversion_minute;
            output_minute += 1;
        };
        output_minute
    };
    second = {
        let mut output_second = 0;
        while total_seconds > 0 {
            total_seconds -= 1;
            output_second += 1;
        }
        output_second
    };




    return DateTime::new(
        Date::from_calendar_date(
            year, 
            month.try_into().unwrap(), 
            day
        ).unwrap(), 
        Time::from_hms(
            hour, 
            minute, 
            second
        ).unwrap(),
    )

}
