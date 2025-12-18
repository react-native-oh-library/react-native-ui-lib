const fs = require('fs');
const path = require('path');

const sourceDir = path.join(__dirname, '../lib/components/DynamicFonts');

function safeCopy(targetBasePath) {
    if (!fs.existsSync(targetBasePath)) {
        return;
    }

    const filesToCopy = [
        'PermissionsAcquirer.harmony.d.ts',
        'PermissionsAcquirer.harmony.js'
    ];

    let targetDir;
    if (targetBasePath.includes('react-native-ui-lib')) {
        targetDir = path.join(targetBasePath, 'lib/components/DynamicFonts');
    } else {
        targetDir = path.join(targetBasePath, 'components/DynamicFonts');
    }

    if (!fs.existsSync(targetDir)) {
        try {
            fs.mkdirSync(targetDir, { recursive: true });
        } catch (e) { return; }
    }

    filesToCopy.forEach(file => {
        const src = path.join(sourceDir, file);
        const dest = path.join(targetDir, file);
        try {
            if (fs.existsSync(src)) {
                fs.copyFileSync(src, dest);
            }
        } catch (e) {
            console.warn(`[Warn] Failed to copy ${file}: ${e.message}`);
        }
    });
}

// 尝试向上查找 node_modules 目录
let currentDir = __dirname;
let nodeModulesPath = null;
for(let i=0; i<5; i++) {
    if (path.basename(currentDir) === 'node_modules') {
        nodeModulesPath = currentDir;
        break;
    }
    currentDir = path.join(currentDir, '..');
}

if (nodeModulesPath) {
    safeCopy(path.join(nodeModulesPath, 'react-native-ui-lib'));
    safeCopy(path.join(nodeModulesPath, 'uilib-native'));
} else {
    // 如果找不到 node_modules 结构，尝试使用相对路径兜底
    try {
        const legacyTarget1 = path.join(__dirname, '../../../react-native-ui-lib');
        safeCopy(legacyTarget1);
        const legacyTarget2 = path.join(__dirname, '../../../uilib-native');
        safeCopy(legacyTarget2);
    } catch(e) {}
}