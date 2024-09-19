mod garden; 
mod largeMouleTree;


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

    let largeModuleThreeLeaf = largeMouleTree::largeModuleTree2::largeModuleTree3::largeModuleTreeLeaf { color:'green' };
    println!("My leaf color is {}", largeModuleThreeLeaf.color);
}
