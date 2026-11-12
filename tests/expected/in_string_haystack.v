module main

fn has_vowel(word string) bool {
	return word.to_lower().contains('a') || word[1..].contains('e')
}

fn main_func() {
	s := '  Hello World  '
	name := 'py2v'
	println(if s.to_lower().contains('hello') { 'True' } else { 'False' })
	println(if !s.trim_space().contains('x') { 'True' } else { 'False' })
	println(if s[2..6].contains('ll') { 'True' } else { 'False' })
	println(if '<${name}>'.contains('2v') { 'True' } else { 'False' })
	println(['lo', 'zz'].filter(s.trim_space().to_lower().contains(it)).map(it))
	println(if has_vowel('CAT') { 'True' } else { 'False' })
}

fn main() {
	main_func()
}
