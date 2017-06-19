<?php namespace Toyotadjakarta\SalesModule\Testimoni;

use Toyotadjakarta\SalesModule\Testimoni\Contract\TestimoniRepositoryInterface;
use Anomaly\Streams\Platform\Entry\EntryRepository;

class TestimoniRepository extends EntryRepository implements TestimoniRepositoryInterface
{

    /**
     * The entry model.
     *
     * @var TestimoniModel
     */
    protected $model;

    /**
     * Create a new TestimoniRepository instance.
     *
     * @param TestimoniModel $model
     */
    public function __construct(TestimoniModel $model)
    {
        $this->model = $model;
    }
}
