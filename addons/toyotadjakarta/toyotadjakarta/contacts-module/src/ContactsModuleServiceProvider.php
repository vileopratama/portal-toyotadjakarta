<?php namespace Toyotadjakarta\ContactsModule;

use Anomaly\Streams\Platform\Addon\AddonServiceProvider;

class ContactsModuleServiceProvider extends AddonServiceProvider
{

    protected $plugins = [
        \Toyotadjakarta\ContactsModule\ContactUsPlugin::class,
    ];

    protected $commands = [];

    protected $schedules = [];

    protected $api = [];

    protected $routes = [];

    protected $middleware = [];

    protected $routeMiddleware = [];

    protected $listeners = [];

    protected $aliases = [];

    protected $bindings = [];

    protected $providers = [];

    protected $singletons = [];

    protected $overrides = [];

    protected $mobile = [];

    public function register()
    {
    }

    public function map()
    {
    }

}
