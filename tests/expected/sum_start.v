module main

import arrays

fn main_func() {
	xs := [1, 2, 3]
	fs := [1.5, 2.5]
	base := 10
	println(10 + (arrays.sum(xs) or { 0 }))
	println(base + (arrays.sum(xs) or { 0 }))
	println(0.5 + (arrays.sum(fs) or { 0 }))
	println(10 + (arrays.sum(fs) or { 0 }))
	println(base + (arrays.sum(fs) or { 0 }))
	println(0.5 + (arrays.sum(xs) or { 0 }))
	println(3 + (arrays.sum([]int{len: 4, init: index}) or { 0 }))
	println((10 + (arrays.sum(xs) or { 0 })) * 2)
}

fn main() {
	main_func()
}
