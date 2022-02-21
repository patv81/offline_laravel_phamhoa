<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProductRequest extends FormRequest
{
    private $table            = 'product';

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
        if($this->saveAttribute){
            return [];
        }
        $id = $this->id;
        $condName = "bail|required|between:5,100|unique:$this->table,name";

        if(!empty($id)){
            $condName .= ",$id";
        }

        return [
            'name'        => $condName,
            'content' => 'bail|required|min:5',
            'status'      => 'bail|in:active,inactive',
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
