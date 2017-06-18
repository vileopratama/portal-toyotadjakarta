<?php

use Anomaly\Streams\Platform\Database\Migration\Migration;

class TusbolModuleCarsCreateCarsStream extends Migration
{

    /**
     * The stream definition.
     *
     * @var array
     */
    protected $stream = [
        'slug' => 'cars',
        'title_column' => 'name',
        'translatable' => true,
    ];

    /**
     * The stream assignments.
     *
     * @var array
     */
    protected $assignments = [
        'name' => [
            'required' => true,
            'translatable' => true,
        ],
        'slug'=> [
            'required' => true,
            'unique' => true,
        ],
        'summary' => [
            'required' => true,
            'translatable' => true,
        ],
        'description' => [
            'required' => true,
            'translatable' => true,
        ],
        'image',
        'images',
        'models',
        'price',
    ];

}
