<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class GeneralRequest extends FormRequest
{
    private $table            = 'general';
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
        $task   = $this->task;

        $condLogo   = '';
        $condCopyright = '';
        $condTimework    = '';
        $condAddress     = '';
        $condSologan    = '';
        $condDesctiption   = '';
        switch ($task) {
            case 'setting-main':
                $condLogo   = 'bail|required|image|max:500';
                $condCopyright = 'bail|between:3,300';
                $condTimework    = 'bail|between:3,300';
                $condAddress     = 'bail|between:3,300';
                $condSologan    = 'bail|between:3,300';
                $condDesctiption   = 'bail|between:3,500';
                break;
            default:
                $error = \Illuminate\Validation\ValidationException::withMessages([
                    'wrong_task' => ['Wrong Task'],
                ]);
                throw $error;
                break;
        }
        

        return [
            'logo'=>    $condLogo  ,
            'copyright'=>    $condCopyright,
            'timework'=>    $condTimework   ,
            'address'=>    $condAddress    ,
            'sologan'=>    $condSologan   ,
            'desctiption'=>    $condDesctiption  ,
        ];
    }

    public function messages()
    {
        return [
        ];
    }
    public function attributes()
    {
        return [
        ];
    }
}
