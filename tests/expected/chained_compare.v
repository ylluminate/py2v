module main

fn middle() int {
	println('middle')
	return 5
}

fn main_func() {
	x := 5
	println(if 1 < x && x < 10 { 'True' } else { 'False' })
	println(if 0 < x && x < 3 { 'True' } else { 'False' })
	println(if 1 <= x && x <= 5 { 'True' } else { 'False' })
	a := 3
	b := 5
	c := 7
	println(if a < b && b < c { 'True' } else { 'False' })
	println(if a < b && b > c { 'True' } else { 'False' })
	println(if a == b && b == 0 { 'True' } else { 'False' })
	println(if a < b && b < c && c < x { 'True' } else { 'False' })
	println(if !(a < b && b < c) { 'True' } else { 'False' })
	println(if (a < b && b < c) || a > b { 'True' } else { 'False' })
	println(if 'abc'.contains('b') && 'xabcx'.contains('abc') { 'True' } else { 'False' })
	println(if a < b && (b in [5, 6]) { 'True' } else { 'False' })
	println(if a < middle() { 'True' } else { 'False' })
}

fn main() {
	main_func()
}
