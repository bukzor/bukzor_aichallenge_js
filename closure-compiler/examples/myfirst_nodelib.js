
exports.myfirst_nodelib = {
	'foo': 'bar',
	'echo': function(string) {
		console.log(string);
	},
	'i': 0,
	'increment': function() {
		this.i += 1;
		console.log('i: ' + this.i);
	}
};

