<?php

use Anomaly\Streams\Platform\Database\Migration\Migration;

class TusbolModuleSlideshowCreateSlideshowFields extends Migration
{

    /**
     * The addon fields.
     *
     * @var array
     */
    protected $fields = [
        'title' => 'anomaly.field_type.text',
        'slug' => [
            'type' => 'anomaly.field_type.slug',
            'config'=> [
                'type' => '-',
                'slugify' => 'title'
            ]
        ],
        'image' => 'anomaly.field_type.file',
        'description' => 'anomaly.field_type.textarea',
    ];

}
