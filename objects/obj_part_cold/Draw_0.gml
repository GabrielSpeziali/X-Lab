// Create the shader
var shader = shd_particle; // Replace with your shader's name

// Set shader parameters
shader_set(shader);
shader_set_uniform_f(shader, "time", current_time); // You can adjust current_time as needed

// Draw your particles here

// Reset shader
shader_reset();
