<?php namespace Tusbol\CarsModule\Http\Controller;


use Anomaly\Streams\Platform\Http\Controller\PublicController;
use Tusbol\CarsModule\Car\Contract\CarRepositoryInterface;


class CarsController extends PublicController
{
    public function index() {
        $this->breadcrumbs->add('Home','/');
        $this->breadcrumbs->add('Product','/cars');
        $this->template->set('meta_title','Product');
        return $this->view->make('tusbol.module.cars::cars.index');
    }

    public function view(CarRepositoryInterface $cars,$slug) {
        if(!$car = $cars->findBySlug($slug)) {
            abort(404);
        }

        $this->breadcrumbs->add('Home','/');
        $this->breadcrumbs->add('Product','/cars');
        $this->breadcrumbs->add($car->name,$car->route('view'));
        $this->template->set('meta_title',$car->name);
        return $this->view->make('tusbol.module.cars::cars.view',compact('car'));
    }
}
