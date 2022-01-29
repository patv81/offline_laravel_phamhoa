<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Helpers\HelpConfig;
class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        $this->bootMailConfig();
    }
    public function bootMailConfig()
    {
        HelpConfig::__constructStatic();
        $config = $this->app['config'];

        $defaultConfigMail = $config->get('mail');

        $newConfigMail = [
            'default' => env('MAIL_DRIVER', 'smtp'),
            'mailers' => [
                'smtp' => [
                    'transport' => 'smtp',
                    'host' => env('MAIL_HOST', 'smtp.mailgun.org'),
                    'port' => env('MAIL_PORT', 587),
                    'encryption' => env('MAIL_ENCRYPTION', 'tls'),
                    'username' => HelpConfig::setting('username') ?? env('MAIL_USERNAME'),
                    'password' => HelpConfig::setting('password') ?? env('MAIL_PASSWORD'),
                ],
                'ses' => [
                    'transport' => 'ses',
                ],
            ],
            'from' => [
                'address' => HelpConfig::setting('fromadress') ?? env('MAIL_FROM_ADDRESS', 'noreply.newnet@gmail.com'),
                'name' => HelpConfig::setting('name') ?? env('MAIL_FROM_NAME', 'Newnet'),
            ],
        ];

        $this->app['config']->set('mail', array_merge($defaultConfigMail, $newConfigMail));
    }
}
