<?php
$servername = "mysql5"; // 服务器名称   
$username = "root"; // 用户名    
$password = "123456"; // 密码  

// 创建连接
$conn = new mysqli($servername, $username, $password);

// 检测连接
if ($conn->connect_error) {
    die("mysql连接失败: " . $conn->connect_error);
}
echo "mysql连接成功";

echo "redis连接开始\n";
$redis = new Redis();
$redis->connect('redis', 6379);
echo "Server is running: " . $redis->ping();

?>
