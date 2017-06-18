<?php namespace Tusbol\CarsModule;

use Anomaly\Streams\Platform\Addon\AddonServiceProvider;
use Anomaly\Streams\Platform\Model\Cars\CarsCarsEntryModel;
use Anomaly\Streams\Platform\Model\Cars\CarsModelsEntryModel;
use Tusbol\CarsModule\Car\CarModel;
use Tusbol\CarsModule\Car\CarRepository;
use Tusbol\CarsModule\Car\Contract\CarRepositoryInterface;
use Tusbol\CarsModule\Model\Contract\ModelRepositoryInterface;
use Tusbol\CarsModule\Model\ModelModel;
use Tusbol\CarsModule\Model\ModelRepository;

class CarsModuleServiceProvider extends AddonServiceProvider
{

    protected $plugins = [];

    protected $commands = [];

    protected $routes = [
        'cars' => 'Tusbol\CarsModule\Http\Controller\CarsController@index',
        'cars/view/{slug}' => [
            'as' => 'tusbol.module.cars::cars.view',
            'uses' => 'Tusbol\CarsModule\Http\Controller\CarsController@view',
        ],
        'cars/model/{slug}' => [
            'as' => 'tusbol.module.cars::models.view',
            'uses' => 'Tusbol\CarsModule\Http\Controller\ModelsController@view',
        ],
        'admin/cars' => 'Tusbol\CarsModule\Http\Controller\Admin\CarsController@index',
        'admin/cars/create' => 'Tusbol\CarsModule\Http\Controller\Admin\CarsController@create',
        'admin/cars/edit/{id}' => 'Tusbol\CarsModule\Http\Controller\Admin\CarsController@edit',

        'admin/cars/models' => 'Tusbol\CarsModule\Http\Controller\Admin\ModelsController@index',
        'admin/cars/models/create' => 'Tusbol\CarsModule\Http\Controller\Admin\ModelsController@create',
        'admin/cars/models/edit/{id}' => 'Tusbol\CarsModule\Http\Controller\Admin\ModelsController@edit'
    ];

    protected $middleware = [];

    protected $listeners = [];

    protected $aliases = [];

    protected $bindings = [
        CarsCarsEntryModel::class => CarModel::class,
        CarsModelsEntryModel::class => ModelModel::class,
        CarSelersEntryModel::class => SellerModel::class,
    ];

    protected $providers = [];

    /**
     * The singleton bindings.
     *
     * @var array
     */
    protected $singletons = [
        CarRepositoryInterface::class => CarRepository::class,
        ModelRepositoryInterface::class => ModelRepository::class,
        SellerRepositoryInterface::class => SellerRepository::class,
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
