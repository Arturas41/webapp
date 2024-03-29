<?php

namespace App\Http\Requests\Angleslash;

use Illuminate\Foundation\Http\FormRequest;

class SubFormRequest extends FormRequest
{
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
        return [
            'name' => 'required|min:3|max:20|alpha_dash|unique:angleslash_subs'
        ];
    }
}
