function approach(val1, val2, amount) {
    if (val1 != val2) {
        if (val1 < val2) {
            val1 = min(val1 + amount, val2);
        } else {
            val1 = max(val1 - amount, val2);
        }
    }
    return val1;
}