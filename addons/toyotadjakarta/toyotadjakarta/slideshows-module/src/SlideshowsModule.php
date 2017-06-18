<?php namespace Toyotadjakarta\SlideshowsModule;

use Anomaly\Streams\Platform\Addon\Module\Module;

class SlideshowsModule extends Module
{

    /**
     * The addon icon.
     *
     * @var string
     */
    protected $icon = 'fa fa-camera-retro';

    /**
     * The module sections.
     *
     * @var array
     */
    protected $sections = [
        'slideshow' => [
            'buttons' => [
                'create' => [
                    'text' => 'Create a slideshow',
                ]
            ]
        ],
        'welcomes' => [
            'buttons' => [
                'create' => [
                    'text' => 'Create a welcome page',
                ]
            ]
        ],
        'intros' => [
            'buttons' => [
                'create' => [
                    'text' => 'Create a intro',
                ]
            ]
        ],

    ];
}
