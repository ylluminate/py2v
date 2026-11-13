module main

import strings

fn main_func() {
	println(if '-5'.len < 4 {
		if '-5'.len > 0 && ('-5'[0] == `-` || '-5'[0] == `+`) {
			'-5'[..1] + strings.repeat(`0`, 4 - '-5'.len) + '-5'[1..]
		} else {
			strings.repeat(`0`, 4 - '-5'.len) + '-5'
		}
	} else {
		'-5'
	})
	println(if '+7'.len < 3 {
		if '+7'.len > 0 && ('+7'[0] == `-` || '+7'[0] == `+`) {
			'+7'[..1] + strings.repeat(`0`, 3 - '+7'.len) + '+7'[1..]
		} else {
			strings.repeat(`0`, 3 - '+7'.len) + '+7'
		}
	} else {
		'+7'
	})
	println(if '-'.len < 3 {
		if '-'.len > 0 && ('-'[0] == `-` || '-'[0] == `+`) {
			'-'[..1] + strings.repeat(`0`, 3 - '-'.len) + '-'[1..]
		} else {
			strings.repeat(`0`, 3 - '-'.len) + '-'
		}
	} else {
		'-'
	})
	println(if '-12345'.len < 3 {
		if '-12345'.len > 0 && ('-12345'[0] == `-` || '-12345'[0] == `+`) {
			'-12345'[..1] + strings.repeat(`0`, 3 - '-12345'.len) + '-12345'[1..]
		} else {
			strings.repeat(`0`, 3 - '-12345'.len) + '-12345'
		}
	} else {
		'-12345'
	})
	println(if ''.len < 2 {
		if ''.len > 0 && (''[0] == `-` || ''[0] == `+`) {
			''[..1] + strings.repeat(`0`, 2 - ''.len) + ''[1..]
		} else {
			strings.repeat(`0`, 2 - ''.len) + ''
		}
	} else {
		''
	})
	s := '-42'
	println((if s.len < 6 {
		if s.len > 0 && (s[0] == `-` || s[0] == `+`) {
			s[..1] + strings.repeat(`0`, 6 - s.len) + s[1..]
		} else {
			strings.repeat(`0`, 6 - s.len) + s
		}
	} else {
		s
	}) + '|')
	println(if '42'.len < 5 {
		if '42'.len > 0 && ('42'[0] == `-` || '42'[0] == `+`) {
			'42'[..1] + strings.repeat(`0`, 5 - '42'.len) + '42'[1..]
		} else {
			strings.repeat(`0`, 5 - '42'.len) + '42'
		}
	} else {
		'42'
	})
}

fn main() {
	main_func()
}
