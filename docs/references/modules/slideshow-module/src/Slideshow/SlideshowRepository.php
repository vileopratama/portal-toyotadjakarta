<?php namespace Tusbol\SlideshowModule\Slideshow;

use Tusbol\SlideshowModule\Slideshow\Contract\SlideshowRepositoryInterface;
use Anomaly\Streams\Platform\Entry\EntryRepository;

class SlideshowRepository extends EntryRepository implements SlideshowRepositoryInterface
{

    /**
     * The entry model.
     *
     * @var SlideshowModel
     */
    protected $model;

    /**
     * Create a new SlideshowRepository instance.
     *
     * @param SlideshowModel $model
     */
    public function __construct(SlideshowModel $model)
    {
        $this->model = $model;
    }
}
