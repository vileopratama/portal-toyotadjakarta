<?php namespace Tusbol\CarsModule\Car;

use Tusbol\CarsModule\Car\Contract\CarRepositoryInterface;
use Anomaly\Streams\Platform\Entry\EntryRepository;

class CarRepository extends EntryRepository implements CarRepositoryInterface
{

    /**
     * The entry model.
     *
     * @var CarModel
     */
    protected $model;

    /**
     * Create a new CarRepository instance.
     *
     * @param CarModel $model
     */
    public function __construct(CarModel $model)
    {
        $this->model = $model;
    }

    public function findBySlug($slug) {
        return $this->model->where('slug',$slug)->first();
    }
}
