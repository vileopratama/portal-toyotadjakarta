<?php

use Anomaly\Streams\Platform\Database\Migration\Migration;

class ToyotadjakartaModuleSlideshowsCreateIntrosStream extends Migration
{

    /**
     * The stream definition.
     *
     * @var array
     */
    protected $stream = [
        'slug' => 'intros',
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
        'image' => [
            'required' => true,
        ],
        'publish' => [
            'required' => true,
        ],
        'summary' => [
            'required' => true,
            'translatable' => true,
        ],
        'description' => [
            'required' => true,
            'translatable' => true,
        ],
    ];
}
