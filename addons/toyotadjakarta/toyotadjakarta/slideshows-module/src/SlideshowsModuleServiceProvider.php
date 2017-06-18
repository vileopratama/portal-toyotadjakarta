<?php namespace Toyotadjakarta\SlideshowsModule;

use Anomaly\Streams\Platform\Addon\AddonServiceProvider;
use Anomaly\Streams\Platform\Model\Slideshows\SlideshowsBannersEntryModel;
use Toyotadjakarta\SlideshowsModule\Banner\BannerModel;
use Toyotadjakarta\SlideshowsModule\Banner\BannerRepository;
use Toyotadjakarta\SlideshowsModule\Banner\Contract\BannerRepositoryInterface;


class SlideshowsModuleServiceProvider extends AddonServiceProvider
{

    protected $plugins = [
        \Toyotadjakarta\SlideshowsModule\SlideshowsPlugin::class,
        \Toyotadjakarta\SlideshowsModule\WelcomesPlugin::class,
        \Toyotadjakarta\SlideshowsModule\IntrosPlugin::class,
    ];

    protected $commands = [];

    protected $schedules = [];

    protected $api = [];

    protected $routes = [];

    protected $middleware = [];

    protected $routeMiddleware = [];

    protected $listeners = [];

    protected $aliases = [];

    protected $bindings = [
        SlideshowsBannersEntryModel::class => BannerModel::class,
    ];

    protected $providers = [];

    protected $singletons = [
        BannerRepositoryInterface::class => BannerRepository::class,
    ];

    protected $overrides = [];

    protected $mobile = [];

    public function register()
    {
    }

    public function map()
    {
    }

}
