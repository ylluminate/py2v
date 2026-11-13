module main

fn main() {
	plain := 'ab'
	single := "it's"
	double := 'say \"hi\"'
	both := 'it\'s \"x\"'
	slash := 'a\\b'
	lines := 'a\nb\tc'
	n := 3
	println('[${if plain.contains("'") && !plain.contains('"') {
		'"' + plain.replace_each(['\\', '\\\\', '\n', '\\n', '\r', '\\r', '\t', '\\t']) + '"'
	} else {
		"'" + plain.replace_each(['\\', '\\\\', '\n', '\\n', '\r', '\\r', '\t', '\\t', "'", "\\'"]) + "'"
	}}] [${if single.contains("'") && !single.contains('"') {
		'"' + single.replace_each(['\\', '\\\\', '\n', '\\n', '\r', '\\r', '\t', '\\t']) + '"'
	} else {
		"'" + single.replace_each(['\\', '\\\\', '\n', '\\n', '\r', '\\r', '\t', '\\t', "'", "\\'"]) + "'"
	}}] [${if double.contains("'") && !double.contains('"') {
		'"' + double.replace_each(['\\', '\\\\', '\n', '\\n', '\r', '\\r', '\t', '\\t']) + '"'
	} else {
		"'" + double.replace_each(['\\', '\\\\', '\n', '\\n', '\r', '\\r', '\t', '\\t', "'", "\\'"]) + "'"
	}}]')
	println('${if both.contains("'") && !both.contains('"') {
		'"' + both.replace_each(['\\', '\\\\', '\n', '\\n', '\r', '\\r', '\t', '\\t']) + '"'
	} else {
		"'" + both.replace_each(['\\', '\\\\', '\n', '\\n', '\r', '\\r', '\t', '\\t', "'", "\\'"]) + "'"
	}} ${if slash.contains("'") && !slash.contains('"') {
		'"' + slash.replace_each(['\\', '\\\\', '\n', '\\n', '\r', '\\r', '\t', '\\t']) + '"'
	} else {
		"'" + slash.replace_each(['\\', '\\\\', '\n', '\\n', '\r', '\\r', '\t', '\\t', "'", "\\'"]) + "'"
	}} ${if lines.contains("'") && !lines.contains('"') {
		'"' + lines.replace_each(['\\', '\\\\', '\n', '\\n', '\r', '\\r', '\t', '\\t']) + '"'
	} else {
		"'" + lines.replace_each(['\\', '\\\\', '\n', '\\n', '\r', '\\r', '\t', '\\t', "'", "\\'"]) + "'"
	}}')
	println('${if plain.contains("'") && !plain.contains('"') {
		'"' + plain.replace_each(['\\', '\\\\', '\n', '\\n', '\r', '\\r', '\t', '\\t']) + '"'
	} else {
		"'" + plain.replace_each(['\\', '\\\\', '\n', '\\n', '\r', '\\r', '\t', '\\t', "'", "\\'"]) + "'"
	}} beside ${plain} and ${n}')
	println('${if 'lit'.contains("'") && !'lit'.contains('"') {
		'"' + 'lit'.replace_each(['\\', '\\\\', '\n', '\\n', '\r', '\\r', '\t', '\\t']) + '"'
	} else {
		"'" + 'lit'.replace_each(['\\', '\\\\', '\n', '\\n', '\r', '\\r', '\t', '\\t', "'", "\\'"]) + "'"
	}}')
}
