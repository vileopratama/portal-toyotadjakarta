<?php namespace Toyotadjakarta\SalesModule\Testimoni\Table;

use Anomaly\Streams\Platform\Ui\Table\TableBuilder;

class TestimoniTableBuilder extends TableBuilder
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
    	'name',
    ];

    /**
     * The table columns.
     *
     * @var array|string
     */
    protected $columns = [
	    'entry.image.preview(100,100)',
	    'name',
	    'entry.publish.toggle',
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
    protected $options = [];

    /**
     * The table assets.
     *
     * @var array
     */
    protected $assets = [];

}
