module main

import math

fn echo(n int) {
	println(n)
}

fn big() int {
	return 9007199254740993
}

fn main_func() {
	println(2147483648)
	println(-2147483649)
	println(9007199254740993)
	println(9223372036854775807)
	println(4294967296)
	println(9007199254740993 + 1)
	println(math.divide_floored(4294967296, 3).quot)
	println(if -9007199254740993 < 0 { 'True' } else { 'False' })
	println(if -9.223372036854776e+18 < 0 { 'True' } else { 'False' })
	println([1, 4294967296])
	println('${9007199254740993}')
	echo(9007199254740993)
	println(big())
	for i in []int{len: 4294967298 - 4294967296, init: index + 4294967296} {
		println(i - 4294967296)
	}
	limit := 4.294967296e+09
	println(if limit > 0 { 'True' } else { 'False' })
	low := -4.294967296e+09
	println(if low < 0 { 'True' } else { 'False' })
	width := 4.294967296e+09
	println(if width > 0 { 'True' } else { 'False' })
	a, b := 4.294967296e+09, 1
	println(if a > b { 'True' } else { 'False' })
	n := 4.294967296e+09
	if n > 0 {
		println(if n > 0 { 'True' } else { 'False' })
	}
}

fn main() {
	main_func()
}
