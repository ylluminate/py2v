module main

fn run() {
	mut d := {
		'a': 1
		'b': 2
		'c': 3
	}
	println(if 'a' in d {
		py2v_popped1 := d['a'] or { panic('KeyError') }
		d.delete('a')
		py2v_popped1
	} else {
		0
	})
	println(if 'zz' in d {
		py2v_popped2 := d['zz'] or { panic('KeyError') }
		d.delete('zz')
		py2v_popped2
	} else {
		9
	})
	_ = if 'b' in d {
		py2v_popped3 := d['b'] or { panic('KeyError') }
		d.delete('b')
		py2v_popped3
	} else {
		panic('KeyError')
	}
	println(d.len)
	mut names := {
		'x': 'one'
	}
	println(if 'y' in names {
		py2v_popped4 := names['y'] or { panic('KeyError') }
		names.delete('y')
		py2v_popped4
	} else {
		'none'
	})
	mut xs := [10, 20, 30, 40]
	println(if 0 >= 0 {
		py2v_popped5 := xs[0]
		xs.delete(0)
		py2v_popped5
	} else {
		py2v_popped5 := xs[xs.len + 0]
		xs.delete(xs.len + 0)
		py2v_popped5
	})
	i := 1
	println(if i >= 0 {
		py2v_popped6 := xs[i]
		xs.delete(i)
		py2v_popped6
	} else {
		py2v_popped6 := xs[xs.len + i]
		xs.delete(xs.len + i)
		py2v_popped6
	})
	xs.pop()
	println(xs.len)
}

fn main() {
	run()
}
