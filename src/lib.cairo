fn main() {
    let mut x: u32 = 5;  // Declares a mutable variable. Because the variable is not redelcared, the type cannot change.
    println!("The value of x is: {}", x);
    x = 6;
    println!("The value of x is: {}", x);
    x = 'U_abc';
    println!("The value of x is: {}", x);
    
    let y: u32 = 2;
    println!("The value of y is {}", y);
    let y: u32 = 3;
    println!("The value of y is {}", y);
    let y: felt252 = y.into();
    let y = 'abc';

    println!("The value of y is {}", y);
    
    printConstants();

}

struct AnyStruct {
    a: u256,
    b: u32,
}

enum AnyEnum {
    Variant1: u8,
    Variant2: u16,
    Variant3: u32,
    Variant4: (usize, u256),
    Variant5: felt252,
}

const ONE_HOUR_IN_SECONDS: u32 = 3600;
const STRUCT_INSTANCE: AnyStruct  = AnyStruct { a: 0, b: 1};
const ENUM_INSTANCE: AnyEnum = AnyEnum::Variant5 ('anyname');
const BOOL_FIXED_SIZE_ARRAY: [bool; 2] = [true, false];

fn printConstants() {
    println!("{}", ONE_HOUR_IN_SECONDS);
    // println!("{}", STRUCT_INSTANCE);  - Can't print Structs
    // println!("{}", ENUM_INSTANCE); - Can't print Enums
    // println!("{}", BOOL_FIXED_SIZE_ARRAY); - Can't print Arrays.

}
