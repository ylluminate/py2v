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

fn touch(values Any) {
	pyrt.invoke(values, 'append', pyrt.box(3))
}

fn main_func() {
	a := pyrt.list_ref[int]([1])
	mut b := a
	b.items << 2
	println('a=${pyrt.str(pyrt.box(a))}')
	println((pyrt.str(pyrt.box(a))).str() + ' ' + ('${pyrt.str(pyrt.box(a))}').str())
	println((if true { 'True' } else { 'False' }).str() + ' ' + (if pyrt.truth(pyrt.box(a)) {
		'True'
	} else {
		'False'
	}).str() + ' ' + (if !(a.items.len > 0) { 'True' } else { 'False' }).str())
	if a.items.len > 0 {
		println('truth')
	}
	println((pyrt.to_int(pyrt.invoke(pyrt.box(a), 'index', pyrt.box(2)))).str() + ' ' + (pyrt.to_int(pyrt.invoke(pyrt.box(a), 'count', pyrt.box(2)))).str())
	c := pyrt.list_ref[int]([7])
	touch(pyrt.box(c))
	println(pyrt.str(pyrt.box(c)))
	words := pyrt.list_ref[string](['a'])
	mut other := words
	other.items << 'b'
	println(words.items.join(' '))
}

fn main() {
	main_func()
}
