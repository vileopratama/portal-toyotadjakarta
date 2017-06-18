<?php
/**
 * Created by PhpStorm.
 * User: Lounge
 * Date: 5/6/2017
 * Time: 7:42 AM
 */

namespace Tusbol\CarsModule\Http\Controller;


use Anomaly\Streams\Platform\Http\Controller\PublicController;
use Tusbol\CarsModule\Model\Contract\ModelRepositoryInterface;

class ModelsController extends PublicController
{
    public function view(ModelRepositoryInterface $models,$slug) {
        if(!$models = $models->findBySlug($slug)) {
            abort(404);
        }
        $this->breadcrumbs->add('Home','/');
        $this->breadcrumbs->add('Product','/cars');
        $this->breadcrumbs->add($models->name,$models->route('view'));
        $this->template->set('meta_title',$models->name);
        $this->template->set('meta_description',$models->description);
        return $this->view->make('tusbol.module.cars::models.view',compact('models'));
    }
}