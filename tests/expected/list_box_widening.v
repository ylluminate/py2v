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

fn append_text(values Any) {
	pyrt.invoke(values, 'append', pyrt.box('x'))
}

fn main_func() {
	source := pyrt.list_ref[Any]([pyrt.box(1)])
	append_text(pyrt.box(source))
	println(pyrt.str(pyrt.box(source)))
}

fn main() {
	main_func()
}
