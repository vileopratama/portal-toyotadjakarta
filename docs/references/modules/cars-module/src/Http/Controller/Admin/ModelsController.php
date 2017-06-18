<?php namespace Tusbol\CarsModule\Http\Controller\Admin;

use Tusbol\CarsModule\Model\Form\ModelFormBuilder;
use Tusbol\CarsModule\Model\Table\ModelTableBuilder;
use Anomaly\Streams\Platform\Http\Controller\AdminController;

class ModelsController extends AdminController
{

    /**
     * Display an index of existing entries.
     *
     * @param ModelTableBuilder $table
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function index(ModelTableBuilder $table)
    {
        return $table->render();
    }

    /**
     * Create a new entry.
     *
     * @param ModelFormBuilder $form
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function create(ModelFormBuilder $form)
    {
        return $form->render();
    }

    /**
     * Edit an existing entry.
     *
     * @param ModelFormBuilder $form
     * @param        $id
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function edit(ModelFormBuilder $form, $id)
    {
        return $form->render($id);
    }
}
