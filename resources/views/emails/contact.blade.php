@component('mail::message')

# Thank you!
Xác nhận thông tin liên lạc.
@component('mail::table')
|Field  |Content  |
|---------|-----|
|Full Name|{{ $params['fullname'] }}    |
|Phone    |{{ $params['phone'] }}       |    
|Email    |{{ $params['email'] }}       |
|Message  |{{ $params['message'] }}     |

@endcomponent

@component('mail::button', ['url' => route('home'), 'color' => 'blue'])
Return to the website
@endcomponent

Regards,
Laravel News

@endcomponent