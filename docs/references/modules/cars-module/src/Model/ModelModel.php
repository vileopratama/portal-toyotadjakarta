<?php namespace Tusbol\CarsModule\Model;


use Tusbol\CarsModule\Car\CarModel;
use Tusbol\CarsModule\Model\Contract\ModelInterface;
use Anomaly\Streams\Platform\Model\Cars\CarsModelsEntryModel;

class ModelModel extends CarsModelsEntryModel implements ModelInterface
{
    public function cars() {
        return $this->belongsToMany(CarModel::class,'cars_cars_models','entry_id','related_id');
    }

}
