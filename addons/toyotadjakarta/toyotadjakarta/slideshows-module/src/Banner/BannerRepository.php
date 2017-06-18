<?php namespace Toyotadjakarta\SlideshowsModule\Banner;

use Toyotadjakarta\SlideshowsModule\Banner\Contract\BannerRepositoryInterface;
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

    public function all($params = array()) {
        $db = $this->model;
        if(array_key_exists("publish",$params) && strlen($params['publish']))
            $db = $db->where('publish',$params['publish']);

        return $db->get();
    }
}
