// takes in a value and function 
// returns the result of adding the function twice 
fn add_fn_twice(value: i32, f: fn(i32) -> i32) -> i32{
    f(value) + f(value)
}
// a function that takes an integer and returns integer 
// we will use this function for `add_fn_twice'
fn square(value: i32) -> i32{
    value * value 
}

fn main(){
    // value is 4, function is square
    let result = add_fn_twice(4, square);
    println!("Result: {result}");
}