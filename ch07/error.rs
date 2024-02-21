fn divide_res(a: i32, b: i32) -> Result<i32, String> {
    if b == 0 {
        Err(String::from("Division by Zero"))
    } else {
        Ok(a / b)
    }
}

fn divide_opt(a: i32, b: i32) -> Option<i32> {
    if b == 0 {
        None
    } else {
        Some(a / b)
    }
}

fn main() -> Result<(), String>{
    let _optional = divide_opt(10, 0).unwrap_or(0);
    let _result = divide_res(10, 0)?;
    Ok(())
}
