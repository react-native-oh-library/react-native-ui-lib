const GITHUB_TOKEN = require('./token');
// scripts/token.js:
// const token = 'XXX';
// module.exports = token;

const LATEST_VERSION = '7.10.0';
const NEW_VERSION = '7.11.0';
const FILE_PREFIX = 'uilib';
const REPO = 'wix/react-native-ui-lib';

require('./prReleaseNotesCommon').generateReleaseNotes(LATEST_VERSION, NEW_VERSION, GITHUB_TOKEN, FILE_PREFIX, REPO);
