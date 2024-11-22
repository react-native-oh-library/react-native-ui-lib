const fs = require('fs');
const path = require('path');

// 源文件路径
const sourceDir = path.join(__dirname, '../lib/components/DynamicFonts');

// 目标目录（库 B）
const targetDir = path.join(__dirname, '../../../react-native-ui-lib/lib/components/DynamicFonts');

// 文件列表
const filesToCopy = [
  'PermissionsAcquirer.harmony.d.js',
  'PermissionsAcquirer.harmony.d.ts',
  'PermissionsAcquirer.harmony.js'
];

// 确保目标目录存在，如果不存在则创建它
if (!fs.existsSync(targetDir)) {
  fs.mkdirSync(targetDir, { recursive: true });
}

// 复制文件函数
async function copyFiles() {
  for (const file of filesToCopy) {
    const sourceFile = path.join(sourceDir, file);
    const targetFile = path.join(targetDir, file);

    try {
      await fs.promises.copyFile(sourceFile, targetFile);
    } catch (err) {
      process.exit(1); // 退出并返回错误代码
    }
  }
}

// 执行文件复制操作
copyFiles();