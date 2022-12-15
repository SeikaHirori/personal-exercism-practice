// This stub file contains items that aren't used yet; feel free to remove this module attribute
// to enable stricter warnings.
#![allow(unused)]

const TEST_LAYER_THINGS:i32 = 0; // RFER 4

pub fn expected_minutes_in_oven() -> i32 {
    let result:i32 = 40;
    
    // unimplemented!("return expected minutes in the oven")
    result
}

pub fn remaining_minutes_in_oven(actual_minutes_in_oven: i32) -> i32 {
    // unimplemented!(
    //     "calculate remaining minutes in oven given actual minutes in oven: {}",
    //     actual_minutes_in_oven
    // )
    let result:i32 = {
        expected_minutes_in_oven() - actual_minutes_in_oven
    };

    result
}

pub fn preparation_time_in_minutes(number_of_layers: i32) -> i32 {
    // unimplemented!(
    //     "calculate preparation time in minutes for number of layers: {}",
    //     number_of_layers
    // )
    let layer_per_minute:i32 = 2;

    let result:i32 = {
        layer_per_minute * number_of_layers
    };

    result
}

pub fn elapsed_time_in_minutes(number_of_layers: i32, actual_minutes_in_oven: i32) -> i32 {
    // unimplemented!(
    //     "calculate elapsed time in minutes for number of layers {} and actual minutes in oven {}",
    //     number_of_layers,
    //     actual_minutes_in_oven
    // )

    let time_layers:i32 = preparation_time_in_minutes(number_of_layers);
    
    let result:i32 = {
        time_layers + actual_minutes_in_oven
    };

    result
} // TODO
