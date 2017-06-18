<?php namespace Toyotadjakarta\SlideshowsModule\Banner\Command;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Anomaly\SettingsModule\Setting\Contract\SettingRepositoryInterface;
use Illuminate\Http\Request;
use Illuminate\Config\Repository;
use Toyotadjakarta\SlideshowsModule\Banner\Contract\BannerRepositoryInterface;

class RenderSlideshowsPlugin
{
    use DispatchesJobs;

    public function __construct()
    {

    }

    public function handle(BannerRepositoryInterface $models,SettingRepositoryInterface $settings, Request $request, Repository $config) {
        $slideshows = $models->all(['publish' => 1]);
        return view("toyotadjakarta.module.slideshows::plugins.slideshows",array('slideshows' => $slideshows));
    }


}