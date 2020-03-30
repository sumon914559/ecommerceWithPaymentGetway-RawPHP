<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'holbornbeauty');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'F00t2000L@@se');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'w&?KoL@}(wgfWrsffN*;(66Ab4@8}p0$k2^Ysz /Bt<hX*l-M`I=*s=o*+?$w)bA');
define('SECURE_AUTH_KEY',  'LO=bDAwux[8Ed.<BZIi4U54nZD0tN47Yjo-(6b:Q=g>f-#TXJ2+7K#b_<0rie[Qe');
define('LOGGED_IN_KEY',    'q]p_O~OWrewFl6a/y0#)^pjZPC?6p;yEQs>#|xe88;xG-utlZtu2ss_pT8u-rRG<');
define('NONCE_KEY',        '{K8}@k~WLN<r[r@`qYWK)V5M}AEb{.5|i3prU&g$o6GAN|#jB#(0!6mnnzh-yMx.');
define('AUTH_SALT',        'RGgt^:?sa}fgXoNJ>rk|)r<KQwq;PG_!b,IAiqG:)&ofDgsL sj;vYW:B|N}>5Yx');
define('SECURE_AUTH_SALT', 'FyfGxR>j,[$L,qC^ n2>D;-J1H48EwrsX_D$BocZQp_*Fe>2x#Yrqmsv3Vl2Zs::');
define('LOGGED_IN_SALT',   'x7=#</q(S`/eK7&vlGFXDMt?9S W#K@3IMLIa0P0#hOl/d@q`Vwn])ofb~e&&)|6');
define('NONCE_SALT',       'O+qU>|@[SCO)?;-m%,Q1 6->r$s;y7^7#kl@^;WQ#I%?+kAi**Sy:uIzM#}QP-_t');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
