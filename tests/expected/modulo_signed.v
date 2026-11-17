module main

import math

fn remainder(a int, b int) int {
	return math.modulo_floored(a, b)
}

fn main_func() {
	for a in [-7, 7, -6, 6, 0] {
		for b in [3, -3] {
			println(remainder(a, b))
		}
	}
	mut value := -7
	py2v_old1 := value
	value = math.modulo_floored(py2v_old1, 3)
	println(value)
}

fn main() {
	main_func()
}
