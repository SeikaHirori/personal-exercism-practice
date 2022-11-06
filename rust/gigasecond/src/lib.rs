use time::Date;
use time::PrimitiveDateTime as DateTime;
use time::Time;
// Returns a DateTime one billion seconds after start.
pub fn after(start: DateTime) -> DateTime {
    let gigasecond:i32 = 1000000000;

    // Conversion: From main format to seconds
    let conversion_year: i32 = 31556952;
    let conversion_month: i32 = 2628000;
    let conversion_day: i32 = 86400;
    let conversion_hour: i32 = 3600;
    let conversion_minute = 60;

    let mut year = start.year();
    let mut month:u8 = {
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
    let mut total:i32 = {
        let mut total_value:i32 = 0;
        
        total_value += i32::from(year) * conversion_year;
        total_value += i32::from(month) * conversion_month;
        total_value += i32::from(day) * conversion_day;
        total_value += i32::from(hour) * conversion_hour;
        total_value += i32::from(minute) * conversion_minute;
        total_value += i32::from(second);

        total_value += gigasecond;

        total_value
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
