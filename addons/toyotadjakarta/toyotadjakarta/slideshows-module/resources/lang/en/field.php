<?php

return [
    'title'            => [
        'name'         => 'Title',
        'instructions' => 'Specify a short descriptive title for this post.',
    ],
    'slug'             => [
        'name'         => 'Slug',
        'instructions' => [
            'types'      => 'The slug is used in making the database table for posts of this type.',
            'categories' => 'The slug is used in building the category\'s URL.',
            'posts'      => 'The slug is used in building the post\'s URL.',
        ],
    ],
    'publish'            => [
        'name'         => 'Publish',
        'instructions' => 'active or inactive slideshow banner',
    ],
    'image'            => [
        'name'         => 'Image',
        'instructions' => 'Specify a short descriptive title for this post.',
    ],
	'summary'            => [
		'name'         => 'Summary',
		'instructions' => 'Specify a short descriptive title for this post.',
	],
    'description'      => [
        'name'         => 'Description',
        'instructions' => [
            'types'      => 'Briefly describe the post type.',
            'categories' => 'Briefly describe the category.',
        ],
        'warning'      => 'This may or may not be displayed publicly depending on how your website was built.',
    ],

];
