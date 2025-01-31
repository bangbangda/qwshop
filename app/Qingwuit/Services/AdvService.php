<?php

namespace App\Qingwuit\Services;

class AdvService extends BaseService
{
    // 根据广告位的名称获取广告图片
    public function adv($name = null)
    {
        if(empty($name)) return $this->formatError('space name find error.');
        $space = $this->getService('AdvSpace',true)->where('name',$name)->first();
        $list = $this->getService('Adv',true)->where('pid',$space['id'])->where('adv_start','<',date('Y-m-d H:i:s'))->where('adv_end','>',date('Y-m-d H:i:s'))->get();
        return $this->format($list);
    }
}
