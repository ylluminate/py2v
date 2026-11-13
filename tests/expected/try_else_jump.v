module main

// TODO(py2v): 3 except handler(s) need a V Result equivalent:
//   else clause (1 stmt)
//   except KeyError (1 stmt)
//   except ValueError (1 stmt)

fn first_even(values []int) int {
	for v_ in values {
		if v_ % 2 == 1 {
			continue
		}
		println(('checking').str() + ' ' + v_.str())
		// else: runs only when the try body raises, which no V construct here does
		// except handlers are not translated: see the TODO(py2v) note above
		//   except ValueError: 1 statement(s) need an `or { ... }` equivalent
	}
	return -1
}

fn leaves(n int) {
	println(('start').str() + ' ' + n.str())
	return
	// else: runs only when the try body raises, which no V construct here does
	// except handlers are not translated: see the TODO(py2v) note above
	//   except ValueError: 1 statement(s) need an `or { ... }` equivalent
}

fn stops(values []int) {
	for v_ in values {
		println(('seen').str() + ' ' + v_.str())
		break
		// else: runs only when the try body raises, which no V construct here does
		// except handlers are not translated: see the TODO(py2v) note above
		//   except KeyError: 1 statement(s) need an `or { ... }` equivalent
	}
}

fn skips(values []int) {
	for v_ in values {
		println(('skip').str() + ' ' + v_.str())
		continue
		// else: runs only when the try body raises, which no V construct here does
		// except handlers are not translated: see the TODO(py2v) note above
		//   except KeyError: 1 statement(s) need an `or { ... }` equivalent
	}
}

fn picks(n int) int {
	println(('pick').str() + ' ' + n.str())
	// else: runs only when the try body raises, which no V construct here does
	// except handlers are not translated: see the TODO(py2v) note above
	//   except ValueError: 1 statement(s) need an `or { ... }` equivalent
	println(('after').str() + ' ' + n.str())
	return 0
}

fn fails(n int) {
	if n < 0 {
		panic('ValueError: ' + 'negative')
		// else: runs only when the try body raises, which no V construct here does
		// except handlers are not translated: see the TODO(py2v) note above
		//   except KeyError: 1 statement(s) need an `or { ... }` equivalent
	}
	println(('ok').str() + ' ' + n.str())
}

fn main() {
	values := [1, 3, 4, 5]
	println(first_even(values))
	leaves(2)
	stops(values)
	skips(values)
	println(picks(4))
	fails(3)
}
