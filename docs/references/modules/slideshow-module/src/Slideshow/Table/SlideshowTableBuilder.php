<?php namespace Tusbol\SlideshowModule\Slideshow\Table;

use Anomaly\Streams\Platform\Ui\Table\TableBuilder;

class SlideshowTableBuilder extends TableBuilder
{

    /**
     * The table views.
     *
     * @var array|string
     */
    protected $views = [];

    /**
     * The table filters.
     *
     * @var array|string
     */
    protected $filters = [
        'search' => [
            'fields' => [
                'title',
                'description',
            ]
        ]
    ];

    /**
     * The table columns.
     *
     * @var array|string
     */
    protected $columns = [
        'entry.image.preview(100,100)',
        'title',
    ];

    /**
     * The table buttons.
     *
     * @var array|string
     */
    protected $buttons = [
        'edit'
    ];

    /**
     * The table actions.
     *
     * @var array|string
     */
    protected $actions = [
        'delete'
    ];

    /**
     * The table options.
     *
     * @var array
     */
    protected $options = [
        'sortable' => true,
    ];

    /**
     * The table assets.
     *
     * @var array
     */
    protected $assets = [];

}
