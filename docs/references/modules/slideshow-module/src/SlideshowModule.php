<?php namespace Tusbol\SlideshowModule;

use Anomaly\Streams\Platform\Addon\Module\Module;

class SlideshowModule extends Module
{

    /**
     * The addon icon.
     *
     * @var string
     */
    protected $icon = 'fa fa-file-photo-o';

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
        ]
    ];
}
