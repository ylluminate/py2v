module main

// TODO(py2v): 1 except handler(s) need a V Result equivalent:
//   except ValueError as e (1 stmt)

fn demo(ok bool) {
	defer {
		println('finally')
	}
	if !ok {
		panic('ValueError: ' + 'bad')
	}
	println('try')
	// except handlers are not translated: see the TODO(py2v) note above
	//   except ValueError as e: 1 statement(s) need an `or { ... }` equivalent
	// else: the try body finished without raising
	println('else')
}

fn main() {
	demo(true)
	demo(false)
}
