
#[derive(Debug, PartialEq, Eq)]
pub enum Allergen {
    Eggs = 0,
    Peanuts = 1,
    Shellfish = 2,
    Strawberries = 3,
    Tomatoes = 4,
    Chocolate = 5,
    Pollen = 6,
    Cats = 7,
}

pub fn convert_to_exponent(item_index:isize) -> u32 {
    2u32.pow(item_index as u32)
}

pub struct Allergies;

impl Allergies {
    pub fn new(score: u32) -> Self {
        unimplemented!(
            "Given the '{}' score, construct a new Allergies struct.",
            score
        );
    }

    pub fn is_allergic_to(&self, allergen: &Allergen) -> bool {
        unimplemented!(
            "Determine if the patient is allergic to the '{:?}' allergen.",
            allergen
        );
    }

    pub fn allergies(&self) -> Vec<Allergen> {
        unimplemented!("Return the list of allergens contained within the score with which the Allergies struct was made.");
    }
}
