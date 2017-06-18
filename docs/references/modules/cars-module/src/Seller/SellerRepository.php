<?php namespace Tusbol\CarsModule\Seller;

use Tusbol\CarsModule\Seller\Contract\SellerRepositoryInterface;
use Anomaly\Streams\Platform\Entry\EntryRepository;

class SellerRepository extends EntryRepository implements SellerRepositoryInterface
{

    /**
     * The entry model.
     *
     * @var SellerModel
     */
    protected $model;

    /**
     * Create a new SellerRepository instance.
     *
     * @param SellerModel $model
     */
    public function __construct(SellerModel $model)
    {
        $this->model = $model;
    }
}
