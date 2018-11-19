const {environment} = require('@rails/webpacker');

const webpack = require('webpack');
environment.plugins.append('Provide', new webpack.ProvidePlugin({
  $: 'jquery',
  jQuery: 'jquery',
  'window.jQuery': 'jquery',
  Popper: ['popper.js', 'default'],
  Holder: 'holderjs',
  holder: 'holderjs'
}));

module.exports = environment;
