<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CouponRequest extends FormRequest
{
    private $table            = 'slider';
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        $id = $this->id;

        $condThumb = 'bail|required|image|max:500';
        $condName  = "bail|required|between:5,100|unique:$this->table,name";

        if(!empty($id)){ // edit
            $condThumb = 'bail|image|max:500';
            $condName  .= ",$id";
        }
        // return [
        //     // 'name'        => $condName,
        //     // 'description' => 'bail|required|min:5',
        //     // 'link'        => 'bail|required|min:5|url',
        //     // 'status'      => 'bail|in:active,inactive',
        //     // 'thumb'       => $condThumb
        //     'value_price'    =>'required_without_all:value_percent',
        //     'value_percent'  =>'required_without_all:value_price'

        // ];
        return [
            'value_price' => [
                'bail',
                'numeric',
                'gt:0',
                function ($attribute, $value, $fail) {
                    $temp =  (request()->filled('value_price') XOR request()->filled('value_percent'));
                    if (!$temp) {
                        // dd(request()->filled('value_price'),request()->filled('value_percent'), $temp, request()->get('value_price'));
                        return $fail('value_price, value_percent .Only 1 of the two is allowed');
                    }
                }
            ],
            'value_percent' => [
                'bail',
                'nullable',
                'digits_between:1,2',
            ],
            'code'=>[
                'required',
                'unique:$this->table,code,'
            ]
        ];
    }

    public function messages()
    {
        return [
            // 'name.required' => 'Name không được rỗng',
            // 'name.min'      => 'Name :input chiều dài phải có ít nhất :min ký tứ',
        ];
    }
    public function attributes()
    {
        return [
            // 'description' => 'Field Description: ',
        ];
    }
}
