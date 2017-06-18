<?php namespace Tusbol\CarsModule\Car;

use Tusbol\CarsModule\Car\Contract\CarInterface;
use Anomaly\Streams\Platform\Model\Cars\CarsCarsEntryModel;
use Tusbol\CarsModule\Model\ModelModel;

class CarModel extends CarsCarsEntryModel implements CarInterface
{
    public function models() {
        return $this->belongsToMany(ModelModel::class,'cars_cars_models','entry_id','related_id');
    }
}
