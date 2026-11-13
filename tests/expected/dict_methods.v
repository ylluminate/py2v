module main

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
	popped := (d['b'] or { 0 })
	println(popped)
	println(d)
	for py2v_k1, py2v_v2 in {
		'x': 10
		'y': 20
	} {
		d[py2v_k1] = py2v_v2
	}
	println(d)
}

fn main() {
	main_func()
}
