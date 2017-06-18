<?php

use Anomaly\Streams\Platform\Database\Migration\Migration;

class TusbolModuleSlideshowCreateSlideshowStream extends Migration
{

    /**
     * The stream definition.
     *
     * @var array
     */
    protected $stream = [
        'slug' => 'slideshow',
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
        'description' => [
            'required' => true,
        ],
    ];

}
