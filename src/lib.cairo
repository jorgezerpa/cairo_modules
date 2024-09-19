#[derive(Drop)]
mod garden {

    pub fn sayHiGarden () {
        println!("Hi from Garden!");
    }

    fn callMeFromVegetables () {
        println!("Hi I have been called from vegetables!");
    }

    #[derive(Drop)]
    pub mod vegetables {

        pub fn sayHiVegetables () {
            println!("Hi from Vegetables!");
            super::callMeFromVegetables();
        }

        #[derive(Drop)]
        pub struct Asparagus {
            pub size:u8
        }
    }
}


use backyard::garden::vegetables::Asparagus;
use backyard::garden::vegetables as myVegetables;


fn main() {
    let myAsparagus = garden::vegetables::Asparagus { size:8 };
    let myAsparagus2 = Asparagus { size:2 };
    let _myAsparagus3 = myVegetables::Asparagus { size:2 };

    println!("Asparagus size {}", myAsparagus.size);
    println!("Asparagus size {}", myAsparagus2.size);

    garden::sayHiGarden();
    garden::vegetables::sayHiVegetables();

}
