<?php namespace Tusbol\CarsModule\Model;

use Tusbol\CarsModule\Model\Contract\ModelRepositoryInterface;
use Anomaly\Streams\Platform\Entry\EntryRepository;

class ModelRepository extends EntryRepository implements ModelRepositoryInterface
{

    /**
     * The entry model.
     *
     * @var ModelModel
     */
    protected $model;

    /**
     * Create a new ModelRepository instance.
     *
     * @param ModelModel $model
     */
    public function __construct(ModelModel $model)
    {
        $this->model = $model;
    }

    public function findBySlug($slug) {
        return $this->model->where('slug',$slug)->first();
    }
}
