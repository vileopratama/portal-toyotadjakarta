<?php namespace Tusbol\SlideshowModule;

use Anomaly\Streams\Platform\Addon\AddonServiceProvider;

class SlideshowModuleServiceProvider extends AddonServiceProvider
{

    protected $plugins = [];

    protected $commands = [];

    protected $routes = [
        'admin/slideshow' => 'Tusbol\SlideshowModule\Http\Controller\Admin\SlideshowController@index',
        'admin/slideshow/create' => 'Tusbol\SlideshowModule\Http\Controller\Admin\SlideshowController@create',
        'admin/slideshow/edit/{id}' => 'Tusbol\SlideshowModule\Http\Controller\Admin\SlideshowController@edit'
    ];

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
