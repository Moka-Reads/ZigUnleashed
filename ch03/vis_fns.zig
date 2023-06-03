pub fn max(x: i32, y: i32) i32 {
    if (x > y) {
        return x;
    } else {
        return y;
    }
}

// finds sum of squares which rely on the `square' function
pub fn sum_of_squares(x: i32, y: i32) i32 {
    return square(x) + square(y);
}

fn square(value: i32) i32 {
    return value * value;
}
