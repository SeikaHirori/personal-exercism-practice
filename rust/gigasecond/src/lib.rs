use time::Date;
use time::PrimitiveDateTime as DateTime;
use time::Month;
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
    let mut month = {
        let current_month = start.month();
        Month::from(current_month) // This should convert format from Month to u8
    };
    let mut day = start.day();
    let mut hour = start.hour();
    let mut minute = start.minute();
    let mut second = start.second();

    // Write logic here


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
