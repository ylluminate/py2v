module main

import arrays

fn classify(s string) string {
	marker := 'r'
	if s.starts_with('a') && marker == 'r' {
		r := s
		return r
	} else if s == 'r' {
		r := s
		return 'literal ' + r
	} else {
		return 'other'
	}
}

fn main() {
	println(classify('apple'))
	println(classify('r'))
	println(classify('berry'))
	maximum := 9
	if [1, 2].map(it <= maximum).all(it) && [1].map(fn (maximum int) i64 {
		return maximum + 1
	}) == [2] {
		x := maximum
		println(x)
	}
	line := 4
	if (arrays.sum([1, 2].map(it * line)) or { 0 }) == 12 {
		q := line
		println(q)
	}
}
