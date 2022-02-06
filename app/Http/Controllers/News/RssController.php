<?php

namespace App\Http\Controllers\News;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;;

use App\Models\RssModel;
use App\Models\NewsRssModel;
use App\Helpers\Feed;
use Cache;
class RssController extends Controller
{
    private $pathViewController = 'news.pages.rss.';  // slider
    private $controllerName     = 'rss';
    private $params             = [];
    private $model;

    public function __construct()
    {
        view()->share('controllerName', $this->controllerName);
    }

    public function index(Request $request)
    {
        view()->share('title', 'Tin tức tổng hợp');
        $rssModel   = new RssModel();
        // Cache::forget('access.saved.newsrss');
        $data = cache()->remember("access.saved.newsrss",now()->addMinutes(60),function() use ($rssModel){
            $itemsRss   = $rssModel->listItems(null, ['task'   => 'news-list-items']);
            Feed::readToSave($itemsRss);
            return NewsRssModel::orderByDesc('pub_date')->get();
        });
        return view($this->pathViewController .  'index', [
            'items'   => $data
        ]);
    }

    public function getGold()
    {
        $itemsGold = Feed::getGold();
        return view($this->pathViewController .  'child-index.box-gold', [
            'itemsGold' => $itemsGold
        ]);
    }

    public function getCoin()
    {
        $itemsCoin = Feed::getCoin();
        return view($this->pathViewController .  'child-index.box-coin', [
            'itemsCoin' => $itemsCoin
        ]);
    }
}
