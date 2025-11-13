function get_input() {
    // Define as teclas de movimento
    var Iskey_up = keyboard_check(ord("W"));
    var Iskey_down = keyboard_check(ord("S"));
    var Iskey_right = keyboard_check(ord("D"));
    var Iskey_left = keyboard_check(ord("A"));

    // Define as teclas de movimento alternativas
    var key_up1 = keyboard_check(vk_up);
    var key_down1 = keyboard_check(vk_down);
    var key_right1 = keyboard_check(vk_right);
    var key_left1 = keyboard_check(vk_left);

    // Calcula os eixos de movimento
    xaxis = (Iskey_right - Iskey_left) + (key_right1 - key_left1);
    yaxis = (Iskey_down - Iskey_up) + (key_down1 - key_up1);
}
