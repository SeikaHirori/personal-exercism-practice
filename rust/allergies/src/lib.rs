

#[derive(Debug, PartialEq, Eq)]
pub enum Allergen {
    Eggs = 1,
    Peanuts = 2,
    Shellfish = 4,
    Strawberries = 8,
    Tomatoes = 16,
    Chocolate = 32,
    Pollen = 64,
    Cats = 128,
}



pub struct Allergies{
    total_score:u32,
}

impl Allergies {
    pub fn new(score: u32) -> Self {
        // unimplemented!(
        //     "Given the '{}' score, construct a new Allergies struct.",
        //     score
        // );
        let mut modified_value = score;

        while modified_value >= 256 {
            modified_value -= 256;
        };

        Self {
            total_score: modified_value
        }

    }

    pub fn is_allergic_to(&self, allergen: &Allergen) -> bool {
        // unimplemented!(
        //     "Determine if the patient is allergic to the '{:?}' allergen.",
        //     allergen
        // );

    } // TODO

    pub fn allergies(&self) -> Vec<Allergen> {
        // unimplemented!("Return the list of allergens contained within the score with which the Allergies struct was made.");
        let output: Vec<Allergen> = Vec::new();

        let value = &self.total_score;

        output
    }

    pub fn allergy_list(&self) -> Vec<Allergy> {
        
    }



}
