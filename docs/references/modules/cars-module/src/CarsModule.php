<?php namespace Tusbol\CarsModule;

use Anomaly\Streams\Platform\Addon\Module\Module;

class CarsModule extends Module
{

    /**
     * The addon icon.
     *
     * @var string
     */
    protected $icon = 'fa fa-car';

    /**
     * The module sections.
     *
     * @var array
     */
    protected $sections = [
        'cars' => [
            'buttons' => [
                'new_car'
            ]
        ],
        'models' => [
            'buttons' => [
                'new_model'
            ]
        ],
        'sellers' => [
            'buttons' => [
                'new_seller'
            ]
        ],
    ];
}
