module main

fn main() {
	rows := [1, 2, 3]
	println(rows.map('${it}').join(','))
	println(rows.filter(it != 2).map('${it}').join(', '))
	println(rows.map('${it}').join(''))
	println(rows.map('<${it}>').join('|'))
	n := 7
	f := 2.5
	b := false
	println('n=' + '${n}')
	println('${f}' + '!')
	println((if b { 'True' } else { 'False' }) + '?')
	s := '${n}'
	println((s.len).str() + ' ' + (s.int() + 1).str() + ' ' + ('${f}'.f64() * 2).str())
}
