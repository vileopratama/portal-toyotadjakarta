<?php namespace Tusbol\SlideshowModule\Banner;

use Tusbol\SlideshowModule\Banner\Contract\BannerRepositoryInterface;
use Anomaly\Streams\Platform\Entry\EntryRepository;

class BannerRepository extends EntryRepository implements BannerRepositoryInterface
{

    /**
     * The entry model.
     *
     * @var BannerModel
     */
    protected $model;

    /**
     * Create a new BannerRepository instance.
     *
     * @param BannerModel $model
     */
    public function __construct(BannerModel $model)
    {
        $this->model = $model;
    }
}
