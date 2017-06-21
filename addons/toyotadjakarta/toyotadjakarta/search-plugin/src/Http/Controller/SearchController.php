<?php namespace Toyotadjakarta\SearchPlugin\Http\Controller;

use Anomaly\PostsModule\Category\Command\AddCategoryBreadcrumb;
use Anomaly\PostsModule\Post\Command\AddPostBreadcrumb;
use Anomaly\PostsModule\Post\Command\AddPostsBreadcrumb;
use Anomaly\PostsModule\Post\Command\AddPostsMetaTitle;
use Anomaly\PostsModule\Post\Command\MakePostResponse;
use Anomaly\PostsModule\Post\Command\MakePreviewResponse;
use Anomaly\PostsModule\Post\Contract\PostRepositoryInterface;
use Anomaly\PostsModule\Post\PostResolver;
use Anomaly\Streams\Platform\Http\Controller\PublicController;
use Input;

/**
 * Class SearchController
 *

 */
class SearchController extends PublicController
{

    /**
     * Display recent posts.
     *
     * @return \Illuminate\View\View
     */
    public function index()
    {
        $this->dispatch(new AddPostsBreadcrumb());
        $this->dispatch(new AddPostsMetaTitle());

        return $this->view->make('anomaly.module.posts::posts/index');
    }

    /**
     * Preview an existing post.
     *
     * @param  PostRepositoryInterface $posts
     * @return \Illuminate\View\View
     */
    public function preview(PostRepositoryInterface $posts)
    {
        if (!$post = $posts->findByStrId($this->route->getParameter('str_id'))) {
            abort(404);
        }

        $this->dispatch(new AddPostsBreadcrumb());
        $this->dispatch(new MakePreviewResponse($post));

        if ($category = $post->getCategory()) {
            $this->dispatch(new AddCategoryBreadcrumb($category));
        }

        $this->dispatch(new AddPostBreadcrumb($post));

        return $post->getResponse();
    }
    
    public function view() {
    	$params['q'] = Input::get('q');
	    return $this->view->make('toyotadjakarta.plugin.search::index',$params);
    }

    /**
     * View an existing post.
     *
     * @param  PostResolver $resolver
     * @return null|\Symfony\Component\HttpFoundation\Response
     */
    public function view2(PostResolver $resolver)
    {
        if (!$post = $resolver->resolve()) {
            abort(404);
        }

        if (!$post->isLive()) {
            abort(404);
        }

        $this->dispatch(new MakePostResponse($post));

        return $post->getResponse();
    }
}
