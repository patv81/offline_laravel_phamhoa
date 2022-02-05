@php
    use App\Helpers\Template as Template;
    use App\Helpers\Hightlight as Hightlight;
@endphp
<div class="x_content">
    <div class="table-responsive">
        <table class="table table-striped jambo_table bulk_action">
            <thead>
                <tr class="headings">
                    <th class="column-title">#</th>
                    <th class="column-title">Contact info</th>
                    <th class="column-title">Lời nhắn</th>
                    <th class="column-title">Trạng thái</th>
                    <th class="column-title">Thời gian</th>
                    <th class="column-title">IP address</th>
                </tr>
            </thead>
            <tbody>
                @if (count($items) > 0)
                    @foreach ($items as $key => $val)
                        @php
                            $index           = $key + 1;
                            $class           = ($index % 2 == 0) ? "even" : "odd";
                            $id              = $val['id'];
                            $fullname        = Hightlight::show($val['fullname'], $params['search'], 'fullname');
                            $email           = $val['email'];
                            $phone           = $val['phone'];
                            $message         = $val['message'];
                            $status          = Template::showItemStatus($controllerName, $id, $val['status']);
                            $createdHistory  = $val['created'];
                            $ip = $val['ip'];
                        @endphp
                        <tr class="{{ $class }} pointer">
                            <td >{{ $index }}</td>
                            <td width="25%">
                                <p>
                                    <strong>Full Name:</strong>{!! $fullname !!}
                                </p>
                                <p>
                                    <strong>Email:</strong>{!! $email !!}
                                </p>
                                <p>
                                    <strong>Phone:</strong>{!! $phone !!}
                                </p>
                            </td>
                            <td>{!! $message !!}</td>
                            <td>{!! $status !!}</td>
                            <td>{!! $createdHistory !!}</td>
                            <td>{!! $ip !!}</td>
                        </tr>
                    @endforeach
                @else
                    @include('admin.templates.list_empty', ['colspan' => 6])
                @endif
            </tbody>
        </table>
    </div>
</div>
           