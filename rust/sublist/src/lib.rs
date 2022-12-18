#[derive(Debug, PartialEq, Eq)]
pub enum Comparison {
    Equal,
    Sublist,
    Superlist,
    Unequal,
}

pub fn sublist<T: PartialEq>(_first_list: &[T], _second_list: &[T]) -> Comparison {
    // unimplemented!("Determine if the first list is equal to, sublist of, superlist of or unequal to the second list.");

    let result:Comparison = {
        let mut output:Comparison = Comparison::Unequal;


        if _first_list.eq(_second_list) { // RFER 5
            output = Comparison::Equal;
        } else {
            let size_list_1 = _first_list.len();
            let size_list_2 = _second_list.len();
            
            if size_list_1 > size_list_2 { // if list 1 is bigger
                if small_list_in_big_list( _second_list, _first_list) {
                    output = Comparison::Superlist;
                };

            } else if size_list_1 < size_list_2 { // if list 2 is bigger
                if small_list_in_big_list(_first_list, _second_list) {
                    output = Comparison::Sublist;
                };
            };
        };

        output
    };

    result
}

pub fn small_list_in_big_list<T: PartialEq>(small_list: &[T], big_list: &[T]) -> bool {
    let mut output: bool = true;

    let mut index = big_list.iter().position(|x| x == &big_list[0]).unwrap(); // RFER 6

    for item in small_list {
        if item != &big_list[index] {
            output = false;
            break;
        }
        index += 1;
    }

    output
}
