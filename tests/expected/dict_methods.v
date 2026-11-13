module main

type Any = bool | int | i64 | f64 | string | []u8

fn main_func() {
	mut d := {
		'a': 1
		'b': 2
		'c': 3
	}
	keys := d.keys()
	println(keys)
	values := d.values()
	println(values)
	mut val := d['a'] or { 0 }
	println(val)
	val = d['z'] or { 99 }
	println(val)
	popped := if 'b' in d {
		py2v_popped1 := d['b'] or { panic('KeyError') }
		d.delete('b')
		py2v_popped1
	} else {
		panic('KeyError')
	}
	println(popped)
	println(d)
	// d.update() - manually merge dicts
	println(d)
}

fn main() {
	main_func()
}
