<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Helpers\HelpConfig;
class MailServiceProvider extends ServiceProvider
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
        config(['mail.mailers.smtp.username'=>HelpConfig::setting('username')]);
        config(['mail.mailers.smtp.password'=>HelpConfig::setting('password')]);    
    }
}
