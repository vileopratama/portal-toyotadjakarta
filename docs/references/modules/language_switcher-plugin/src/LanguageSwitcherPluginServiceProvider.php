<?php namespace Tusbol\LanguageSwitcherPlugin;

use Anomaly\Streams\Platform\Addon\AddonServiceProvider;

class LanguageSwitcherPluginServiceProvider extends AddonServiceProvider
{

    protected $plugins = [
        Tusbol\LanguageSwitcherPlugin\LanguageSwitcherPlugin::class
    ];

    protected $commands = [];

    protected $routes = [];

    protected $middleware = [];

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
