pub fn reverse(input: &str) -> String {
    let chars_inputs: Vec<char> = input
        .chars()
        .rev()
        .collect();
    
    let output_string:String = String::from_iter(chars_inputs);


    return String::from(output_string);
}
