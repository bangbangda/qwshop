<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UsersController extends Controller
{
    protected $modelName = 'User';

    // 添加
    public function store(Request $request)
    {
        try {
            DB::beginTransaction();
            $this->getService($this->modelName, true)
                ->create([
                    'username' => $request->username ?? '',
                    'phone' => $request->phone ?? '',
                    'password' => Hash::make($request->password ?? '123456'),
                    'nickname' => $request->username ?? 'Mysterious',
                    'avatar' => $request->avatar ?? '',
                ]);
            DB::commit();
            return $this->success([], __('tip.success'));
        } catch (\Exception $e) {
            DB::rollBack();
            return $this->error($e->getMessage());
        }
    }

    // 显示
    public function show($id)
    {
        $rs = $this->getService($this->modelName, true)->find($id);
        unset($rs['password']);
        return $this->success($rs, __('tip.success'));
    }

    // 修改
    public function update(Request $request, $id)
    {
        try {
            $model = $this->getService($this->modelName, true)->find($id);
            $model->username = $request->username;
            if (!empty($request->password)) {
                $model->password = Hash::make($request->password);
            }
            $model->nickname = $request->nickname ?? '';
            $model->phone = $request->phone ?? '';
            $model->avatar = $request->avatar ?? '';
            $model->save();
            DB::commit();
            return $this->success([], __('tip.success'));
        } catch (\Exception $e) {
            DB::rollBack();
            return $this->error($e->getMessage());
        }
    }

    // 用户资金处理
    public function money(Request $request)
    {
        if (empty($request->id)) return $this->success();
        return $this->handle($this->getService('MoneyLog')->edit([
            'money' => $request->money ?? 1,
            'is_type' => $request->is_type ?? 0,
            'user_id' => $request->id ?? 0,
            'is_belong' => $request->is_belong ?? 0,
            'name' => __('tip.systemHandleMoney'),
        ]));
    }
}
