#!/usr/bin/env php
<?php
ini_set('display_errors', 0);
if (!isset($_SERVER['argv'][1])) {
    die('usage: ' . __FILE__ . ' <projecthandle>' . PHP_EOL);
}

$project_handle = $_SERVER['argv'][1];
$project_path = '/data/webs/' . $project_handle;

if (!file_exists($project_path)) {
    die(sprintf('project=(%s) does not exist', $project_handle));
}

if (file_exists($project_path . '/config/config.php')) {
    $config_path = $project_path . '/config/config.php';
} elseif (file_exists($project_path . '/includes/settings.php')) {
    $config_path = $project_path . '/includes/settings.php';
} elseif (file_exists($project_path . '/app/config/config.php')) {
    $config_path = $project_path . '/app/config/config.php';
}

if (!file_exists($config_path)) {
    die('unable to detect project config');
}

require_once($config_path);

$params = array();
if (defined('PG_CONN_HOST')) $params[] = '-h ' . PG_CONN_HOST;
if (defined('PG_CONN_PORT')) $params[] = '-p ' . PG_CONN_PORT;
if (defined('PG_CONN_DBNAME')) $params[] = PG_CONN_DBNAME;
echo implode(' ', $params);
