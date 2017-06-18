<?php namespace Tusbol\CarsModule\Http\Controller\Admin;

use Tusbol\CarsModule\Car\Form\CarFormBuilder;
use Tusbol\CarsModule\Car\Table\CarTableBuilder;
use Anomaly\Streams\Platform\Http\Controller\AdminController;

class CarsController extends AdminController
{

    /**
     * Display an index of existing entries.
     *
     * @param CarTableBuilder $table
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function index(CarTableBuilder $table)
    {
        return $table->render();
    }

    /**
     * Create a new entry.
     *
     * @param CarFormBuilder $form
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function create(CarFormBuilder $form)
    {
        return $form->render();
    }

    /**
     * Edit an existing entry.
     *
     * @param CarFormBuilder $form
     * @param        $id
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function edit(CarFormBuilder $form, $id)
    {
        return $form->render($id);
    }
}
