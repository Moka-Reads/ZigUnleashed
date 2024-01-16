fn divide(a: i32, b: i32) -> Result<i32, String> {
    if b == 0 {
        Err(String::from("Cannot divide by zero"))
    } else {
        Ok(a / b)
    }
}

/// This code demonstrates the usage of the `unwrap_or` and `?` operators with the `Result` type.
/// It calls the `divide` function with different arguments and handles the possible division by zero error.
/// The `unwrap_or` operator is used to provide a default value in case of an error, while the `?` operator
/// is used to propagate the error to the caller.
fn main() {
    let result = divide(10, 2).unwrap_or(0);
    println!("Result: {}", result);

    let result = divide(10, 0).unwrap_or(0);
    println!("Result: {}", result);

    let result = divide(10, 2)?;
    println!("Result: {}", result);

    let result = divide(10, 0)?;
    println!("Result: {}", result);
    Ok(())
}
