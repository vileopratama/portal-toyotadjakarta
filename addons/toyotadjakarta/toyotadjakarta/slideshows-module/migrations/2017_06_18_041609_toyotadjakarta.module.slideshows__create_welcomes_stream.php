<?php

use Anomaly\Streams\Platform\Database\Migration\Migration;

class ToyotadjakartaModuleSlideshowsCreateWelcomesStream extends Migration
{

    /**
     * The stream definition.
     *
     * @var array
     */
    protected $stream = [
        'slug' => 'welcomes',
        'title_column' => 'title',
        'translatable' => true,
    ];

    /**
     * The stream assignments.
     *
     * @var array
     */
    protected $assignments = [
        'title' => [
            'required' => true,
            'translatable' => true,
        ],
        'slug' => [
            'unique' => true,
            'required' => true,
        ],
        'publish' => [
            'required' => true,
        ],
        'description' => [
            'required' => true,
            'translatable' => true,
        ],
    ];

}
