<<<<<<< HEAD
function approach(val1, val2, amount) {
    if (val1 != val2) {
        if (val1 < val2) {
            val1 = min(val1 + amount, val2);
        } else {
            val1 = max(val1 - amount, val2);
        }
    }
    return val1;
=======
function approach(val1, val2, amount) {
    if (val1 != val2) {
        if (val1 < val2) {
            val1 = min(val1 + amount, val2);
        } else {
            val1 = max(val1 - amount, val2);
        }
    }
    return val1;
>>>>>>> 406811f24178cb7c901e82d65b1dcb9b5c505c7c
}