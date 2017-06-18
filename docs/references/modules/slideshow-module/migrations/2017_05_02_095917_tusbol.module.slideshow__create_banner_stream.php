<?php

use Anomaly\Streams\Platform\Database\Migration\Migration;

class TusbolModuleSlideshowCreateBannerStream extends Migration
{

    /**
     * The stream definition.
     *
     * @var array
     */
    protected $stream = [
        'slug' => 'banner'
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
        ],
        'description' => [
            'required' => true,
        ],
    ];

}
