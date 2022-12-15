// This stub file contains items that aren't used yet; feel free to remove this module attribute
// to enable stricter warnings.
#![allow(unused)]

const MIN_SPEED:f64 = 0.0;
const MAX_SPEED:f64 = 10.0;
const CARS_PER_SPEED:f64 = 221.0;

pub fn production_rate_per_hour(speed: u8) -> f64 {
    unimplemented!("calculate hourly production rate at speed: {}", speed)
} // TODO

pub fn working_items_per_minute(speed: u8) -> u32 {
    unimplemented!("calculate the amount of working items at speed: {}", speed)
} // TODO
