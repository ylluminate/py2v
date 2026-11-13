module main

// TODO(py2v): 1 except handler(s) need a V Result equivalent:
//   except ValueError as eg (1 stmt)

fn handle(ok bool) {
	defer {
		println('cleanup')
	}
	if ok {
		println('ok')
	} else {
		panic('ExceptionGroup: ' + 'eg')
	}
	// except handlers are not translated: see the TODO(py2v) note above
	//   except ValueError as eg: 1 statement(s) need an `or { ... }` equivalent
	// else: the try body finished without raising
	println('no group')
}

fn main() {
	handle(true)
	handle(false)
}
