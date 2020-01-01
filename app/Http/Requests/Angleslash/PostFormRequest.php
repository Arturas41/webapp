<?php

namespace App\Http\Requests\Angleslash;

use Illuminate\Foundation\Http\FormRequest;

class PostFormRequest extends FormRequest
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
            'title' => 'required|max:100',
            'url' => 'required|max:2083|active_url',
            'sub' => 'required|exists:angleslash_subs,name'
        ];
    }
}
