<?php namespace Toyotadjakarta\SlideshowsModule\Intro;

use Toyotadjakarta\SlideshowsModule\Intro\Contract\IntroRepositoryInterface;
use Anomaly\Streams\Platform\Entry\EntryRepository;

class IntroRepository extends EntryRepository implements IntroRepositoryInterface
{

    /**
     * The entry model.
     *
     * @var IntroModel
     */
    protected $model;

    /**
     * Create a new IntroRepository instance.
     *
     * @param IntroModel $model
     */
    public function __construct(IntroModel $model)
    {
        $this->model = $model;
    }
}
