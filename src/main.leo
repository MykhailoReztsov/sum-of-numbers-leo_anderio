program sum_of_numbers.aleo {
    transition with_formula(from_num: i64, to_num: i64) -> i64 {
        return ((to_num - from_num).abs() + 1i64) * (from_num + to_num) / 2i64;
    }

    transition with_loop(from_num: i8, to_num: i8) -> i64 {
        let sum: i64 = 0i64;

        for it: i64 in -128i64..127i64 {
            if ((from_num as i64) <= it && it <= (to_num as i64)) {
                sum = sum + it;
            }
        }

        return sum;
    }
}
