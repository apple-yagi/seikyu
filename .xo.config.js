const path = require('path');

/** @type{import('xo').Options} */
module.exports = {
	ignores: ['node_modules', '.wrangler'],
	parserOptions: {
		project: path.resolve(__dirname, './tsconfig.json'),
	},
	prettier: true,
	space: 2,
};
