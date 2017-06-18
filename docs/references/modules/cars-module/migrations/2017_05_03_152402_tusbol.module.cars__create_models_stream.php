<?php

use Anomaly\Streams\Platform\Database\Migration\Migration;

class TusbolModuleCarsCreateModelsStream extends Migration
{

    /**
     * The stream definition.
     *
     * @var array
     */
    protected $stream = [
        'slug' => 'models',
        'translatable' => true,
        'title_column' => 'name',
        'sortable' => true,
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
            'config' => [
                'slugify' => 'name'
            ],
        ],
        'description' => [
            'required' => true,
            'translatable' => true,
        ],
    ];

}
