<?php namespace Toyotadjakarta\SlideshowsModule\Http\Controller\Admin;

use Toyotadjakarta\SlideshowsModule\Intro\Form\IntroFormBuilder;
use Toyotadjakarta\SlideshowsModule\Intro\Table\IntroTableBuilder;
use Anomaly\Streams\Platform\Http\Controller\AdminController;

class IntrosController extends AdminController
{

    /**
     * Display an index of existing entries.
     *
     * @param IntroTableBuilder $table
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function index(IntroTableBuilder $table)
    {
        return $table->render();
    }

    /**
     * Create a new entry.
     *
     * @param IntroFormBuilder $form
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function create(IntroFormBuilder $form)
    {
        return $form->render();
    }

    /**
     * Edit an existing entry.
     *
     * @param IntroFormBuilder $form
     * @param        $id
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function edit(IntroFormBuilder $form, $id)
    {
        return $form->render($id);
    }
}
