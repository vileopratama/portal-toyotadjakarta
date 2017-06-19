<?php namespace Toyotadjakarta\SalesModule\Http\Controller\Admin;

use Toyotadjakarta\SalesModule\Testimoni\Form\TestimoniFormBuilder;
use Toyotadjakarta\SalesModule\Testimoni\Table\TestimoniTableBuilder;
use Anomaly\Streams\Platform\Http\Controller\AdminController;

class TestimonisController extends AdminController
{

    /**
     * Display an index of existing entries.
     *
     * @param TestimoniTableBuilder $table
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function index(TestimoniTableBuilder $table)
    {
        return $table->render();
    }

    /**
     * Create a new entry.
     *
     * @param TestimoniFormBuilder $form
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function create(TestimoniFormBuilder $form)
    {
        return $form->render();
    }

    /**
     * Edit an existing entry.
     *
     * @param TestimoniFormBuilder $form
     * @param        $id
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function edit(TestimoniFormBuilder $form, $id)
    {
        return $form->render($id);
    }
}
