<?php namespace Tusbol\SlideshowModule\Http\Controller\Admin;

use Tusbol\SlideshowModule\Slideshow\Form\SlideshowFormBuilder;
use Tusbol\SlideshowModule\Slideshow\Table\SlideshowTableBuilder;
use Anomaly\Streams\Platform\Http\Controller\AdminController;

class SlideshowController extends AdminController
{

    /**
     * Display an index of existing entries.
     *
     * @param SlideshowTableBuilder $table
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function index(SlideshowTableBuilder $table)
    {
        return $table->render();
    }

    /**
     * Create a new entry.
     *
     * @param SlideshowFormBuilder $form
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function create(SlideshowFormBuilder $form)
    {
        return $form->render();
    }

    /**
     * Edit an existing entry.
     *
     * @param SlideshowFormBuilder $form
     * @param        $id
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function edit(SlideshowFormBuilder $form, $id)
    {
        return $form->render($id);
    }
}
