<?php

define('G_CAPCHA_SECRET', '6LfIhxIUAAAAAMFaU3m2VW1DMXUCR0lXMYGAAKsL');
define('G_CAPCHA_URI', 'https://www.google.com/recaptcha/api/siteverify');

class Capcha
{
	static function run($response) {
		$options = [
			'http' => [
				'header'  => "Content-type: application/x-www-form-urlencoded\r\n",
				'method'  => 'POST',
				'content' => http_build_query(['secret' => G_CAPCHA_SECRET, 'response' => $response])
			]
		];

		$context  = stream_context_create($options);
		$result = file_get_contents(G_CAPCHA_URI, false, $context);

		$responseData = json_decode($result, TRUE);

		return $responseData['success'];
	}
}