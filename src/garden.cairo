pub fn sayHiGarden () {
    println!("Hi from Garden!");
}

fn callMeFromVegetables () {
    println!("Hi I have been called from vegetables!");
}

#[derive(Drop)]
pub mod vegetables;
