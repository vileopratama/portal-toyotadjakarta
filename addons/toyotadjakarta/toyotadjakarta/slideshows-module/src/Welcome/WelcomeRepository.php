<?php namespace Toyotadjakarta\SlideshowsModule\Welcome;

use Toyotadjakarta\SlideshowsModule\Welcome\Contract\WelcomeRepositoryInterface;
use Anomaly\Streams\Platform\Entry\EntryRepository;

class WelcomeRepository extends EntryRepository implements WelcomeRepositoryInterface
{

    /**
     * The entry model.
     *
     * @var WelcomeModel
     */
    protected $model;

    /**
     * Create a new WelcomeRepository instance.
     *
     * @param WelcomeModel $model
     */
    public function __construct(WelcomeModel $model)
    {
        $this->model = $model;
    }
}
