module main

fn cut(text string, sep string, n int) []string {
	return text.split_nth(sep, n + 1)
}

fn main_func() {
	line := 'k=v=w'
	py2v_unpack1 := line.split_nth('=', 2)
	mut key := py2v_unpack1[0]
	mut value := py2v_unpack1[1]
	println(key.str() + ' ' + value.str())
	println('a::b::c'.split_nth('::', 2))
	println('a,b,c'.split_nth(',', 1))
	println('a,b,c'.split(','))
	println(cut('a,b,c', ',', 1))
	println('a,b,c'.split(','))
}

fn main() {
	main_func()
}
