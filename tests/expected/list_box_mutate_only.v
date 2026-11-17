module main

import pyrt

type Any = pyrt.Value

fn (a Any) + (b Any) Any {
	return pyrt.add(a, b) or { panic(err) }
}

fn (a Any) - (b Any) Any {
	return pyrt.sub(a, b) or { panic(err) }
}

fn (a Any) * (b Any) Any {
	return pyrt.mul(a, b) or { panic(err) }
}

fn (a Any) / (b Any) Any {
	return pyrt.truediv(a, b) or { panic(err) }
}

fn (a Any) % (b Any) Any {
	return pyrt.mod(a, b) or { panic(err) }
}

fn (a Any) < (b Any) bool {
	return pyrt.lt(a, b) or { panic(err) }
}

fn main_func() {
	source := pyrt.list_ref[int]([1])
	mut rows := []Any{}
	rows << 0
	rows << pyrt.box(source)
	pyrt.invoke(rows[1], 'append', pyrt.box(2))
	println(pyrt.str(pyrt.box(source)))
}

fn main() {
	main_func()
}
