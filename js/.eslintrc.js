
module.exports = {
  'env': { 'browser': true, 'node': true, 'es6': true },
  'extends': ['eslint:recommended', 'plugin:react/recommended'],
  'globals': {
    'childProcess': true,
    'ctx': true,
    'document': true,
    'fs': true,
    'ipc': true,
    'GeneralMagic': true,
    'GoPanoEngineModule': true,
    'gpengine': true,
    'remote': true,
    'window': true
  },
  'parserOptions': {
    'ecmaFeatures': {
      'experimentalObjectRestSpread': true,
      'jsx': true
    }, 'sourceType': 'module'
  },
  'plugins': ['react'],
  'rules': {
    'comma-spacing': 'warn',
    'indent': ['warn', 2],
    'linebreak-style': ['warn', 'unix'],
    'no-console': 'warn',
    'no-unused-vars': 'warn',
    'quotes': ['warn', 'single'],
    'react/prop-types': 'warn',
    'semi': ['error', 'always']
  }
};
