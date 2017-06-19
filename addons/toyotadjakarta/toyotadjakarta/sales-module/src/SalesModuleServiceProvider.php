<?php namespace Toyotadjakarta\SalesModule;

use Anomaly\Streams\Platform\Addon\AddonServiceProvider;

class SalesModuleServiceProvider extends AddonServiceProvider
{

    protected $plugins = [
    	\Toyotadjakarta\SalesModule\TestimoniSlickPlugin::class,
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
