module main

fn main_func() {
	mut d := {
		'a': 1
		'b': 2
	}
	e := {
		'b': 5
		'c': 6
	}
	for py2v_k1, py2v_v2 in e {
		d[py2v_k1] = py2v_v2
	}
	println((d.len).str() + ' ' + (d['b']).str() + ' ' + (d['c']).str())
	println(d.keys())
	for py2v_k3, py2v_v4 in {
		'z': 9
		'a': 0
	} {
		d[py2v_k3] = py2v_v4
	}
	println((d['z']).str() + ' ' + (d['a']).str())
	println(d.keys())
	mut names := {
		1: 'one'
	}
	for py2v_k5, py2v_v6 in {
		2: 'two'
		1: 'uno'
	} {
		names[py2v_k5] = py2v_v6
	}
	println((names[1]).str() + ' ' + (names[2]).str())
}

fn main() {
	main_func()
}
