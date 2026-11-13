module main

import strconv

fn from_binary(s string) int {
	return int(fn (s string) i64 {
		mut t := s.trim_space()
		mut neg := false
		if t.len > 0 && t[0] in [`+`, `-`] {
			neg = t[0] == `-`
			t = t[1..]
		}
		if t.len > 1 && t[0] == `0` && t[1] in [`b`, `B`] {
			t = t[2..]
			if t.starts_with('_') { t = t[1..] }
		}
		if t == '' || t[0] in [`+`, `-`, `_`] || t.ends_with('_') || t.contains('__') {
			panic('invalid literal for int() with base 2: ' + s)
		}
		n := strconv.parse_int(t.replace('_', ''), 2, 64) or { panic(err) }
		return if neg { -n } else { n }
	}(s))
}

fn from_hex(s string) int {
	return int(fn (s string) i64 {
		mut t := s.trim_space()
		mut neg := false
		if t.len > 0 && t[0] in [`+`, `-`] {
			neg = t[0] == `-`
			t = t[1..]
		}
		if t.len > 1 && t[0] == `0` && t[1] in [`x`, `X`] {
			t = t[2..]
			if t.starts_with('_') { t = t[1..] }
		}
		if t == '' || t[0] in [`+`, `-`, `_`] || t.ends_with('_') || t.contains('__') {
			panic('invalid literal for int() with base 16: ' + s)
		}
		n := strconv.parse_int(t.replace('_', ''), 16, 64) or { panic(err) }
		return if neg { -n } else { n }
	}(s))
}

fn main() {
	println(from_binary('101'))
	println(from_hex('ff'))
	println(int(fn (s string) i64 {
		mut t := s.trim_space()
		mut neg := false
		if t.len > 0 && t[0] in [`+`, `-`] {
			neg = t[0] == `-`
			t = t[1..]
		}
		if t.len > 1 && t[0] == `0` && t[1] in [`x`, `X`] {
			t = t[2..]
			if t.starts_with('_') { t = t[1..] }
		}
		if t == '' || t[0] in [`+`, `-`, `_`] || t.ends_with('_') || t.contains('__') {
			panic('invalid literal for int() with base 16: ' + s)
		}
		n := strconv.parse_int(t.replace('_', ''), 16, 64) or { panic(err) }
		return if neg { -n } else { n }
	}('-0x1F')) + int(fn (s string) i64 {
		mut t := s.trim_space()
		mut neg := false
		if t.len > 0 && t[0] in [`+`, `-`] {
			neg = t[0] == `-`
			t = t[1..]
		}
		if t.len > 1 && t[0] == `0` && t[1] in [`o`, `O`] {
			t = t[2..]
			if t.starts_with('_') { t = t[1..] }
		}
		if t == '' || t[0] in [`+`, `-`, `_`] || t.ends_with('_') || t.contains('__') {
			panic('invalid literal for int() with base 8: ' + s)
		}
		n := strconv.parse_int(t.replace('_', ''), 8, 64) or { panic(err) }
		return if neg { -n } else { n }
	}(' 0o17 ')))
	println(int(fn (s string) i64 {
		mut t := s.trim_space()
		mut neg := false
		if t.len > 0 && t[0] in [`+`, `-`] {
			neg = t[0] == `-`
			t = t[1..]
		}
		if t == '' || t[0] in [`+`, `-`, `_`] || t.ends_with('_') || t.contains('__') {
			panic('invalid literal for int() with base 10: ' + s)
		}
		n := strconv.parse_int(t.replace('_', ''), 10, 64) or { panic(err) }
		return if neg { -n } else { n }
	}('1_000')) - int(fn (s string) i64 {
		mut t := s.trim_space()
		mut neg := false
		if t.len > 0 && t[0] in [`+`, `-`] {
			neg = t[0] == `-`
			t = t[1..]
		}
		if t == '' || t[0] in [`+`, `-`, `_`] || t.ends_with('_') || t.contains('__') {
			panic('invalid literal for int() with base 10: ' + s)
		}
		n := strconv.parse_int(t.replace('_', ''), 10, 64) or { panic(err) }
		return if neg { -n } else { n }
	}('+7')))
	println('42'.int())
}
