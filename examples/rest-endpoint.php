<?php
/**
 * Synthetic REST endpoint example.
 */

defined('ABSPATH') || exit;

add_action('rest_api_init', function (): void {
    register_rest_route('multexpk-labs/v1', '/health', [
        'methods'  => 'GET',
        'callback' => static function (): array {
            return ['status' => 'ok'];
        },
        'permission_callback' => '__return_true',
    ]);
});
