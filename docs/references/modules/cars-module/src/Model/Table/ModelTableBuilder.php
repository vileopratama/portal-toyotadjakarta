<?php namespace Tusbol\CarsModule\Model\Table;

use Anomaly\Streams\Platform\Ui\Table\TableBuilder;

class ModelTableBuilder extends TableBuilder
{

    /**
     * The table views.
     *
     * @var array|string
     */
    protected $views = [

    ];

    /**
     * The table filters.
     *
     * @var array|string
     */
    protected $filters = [
        'name',
        'description',
    ];

    /**
     * The table columns.
     *
     * @var array|string
     */
    protected $columns = [
        'name',
        'description',
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
