<?php namespace Toyotadjakarta\SlideshowsModule\Http\Controller\Admin;

use Toyotadjakarta\SlideshowsModule\Welcome\Form\WelcomeFormBuilder;
use Toyotadjakarta\SlideshowsModule\Welcome\Table\WelcomeTableBuilder;
use Anomaly\Streams\Platform\Http\Controller\AdminController;

class WelcomesController extends AdminController
{

    /**
     * Display an index of existing entries.
     *
     * @param WelcomeTableBuilder $table
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function index(WelcomeTableBuilder $table)
    {
        return $table->render();
    }

    /**
     * Create a new entry.
     *
     * @param WelcomeFormBuilder $form
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function create(WelcomeFormBuilder $form)
    {
        return $form->render();
    }

    /**
     * Edit an existing entry.
     *
     * @param WelcomeFormBuilder $form
     * @param        $id
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function edit(WelcomeFormBuilder $form, $id)
    {
        return $form->render($id);
    }
}
