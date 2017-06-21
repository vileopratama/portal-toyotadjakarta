<?php namespace Toyotadjakarta\SearchPlugin;

use Anomaly\Streams\Platform\Addon\AddonServiceProvider;

class SearchPluginServiceProvider extends AddonServiceProvider
{

    protected $plugins = [];

    protected $commands = [];

    protected $schedules = [];

    protected $api = [];

    protected $routes = [
	    "search"    => [
		    'as'   => 'anomaly.plugin.search::search.view',
		    'uses' => 'Toyotadjakarta\SearchPlugin\Http\Controller\SearchController@view',
	    ],
    ];

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
