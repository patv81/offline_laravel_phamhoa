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
                    <th class="column-title">Name</th>
                    <th class="column-title">Link</th>
                    <th class="column-title">Trạng thái</th>
                    <th class="column-title">Ordering</th>
                    <th class="column-title">Kiểu menu</th>
                    <th class="column-title">Kiểu mở menu</th>
                    <th class="column-title">Hành động</th>
                </tr>
            </thead>
            <tbody>
                @if (count($items) > 0)
                    @foreach ($items as $key => $val)
                        @php
                            $index           = $key + 1;
                            $class           = ($index % 2 == 0) ? "even" : "odd";
                            $id              = $val['id'];
                            $name            = Hightlight::show($val['name'], $params['search'], 'name');
                            $link            =$val['link'];
                            $status          = Template::showItemStatus($controllerName, $id, $val['status']);
                            $ordering        = $val['ordering'];
                            $type_menu       = Template::showItemSelect2($controllerName, $id, $val['type_menu'], 'type_menu',config('zvn.template.type_menu'));
                            $type_open       = Template::showItemSelect2($controllerName, $id, $val['type_open'], 'type_open',config('zvn.template.type_open'));

                            $listBtnAction   = Template::showButtonAction($controllerName, $id);
                        @endphp

                        <tr class="{{ $class }} pointer">
                            <td >{{ $index }}</td>
                            <td>{!! $name !!}</td>
                            <td>{!! $link !!}</td>
                            <td>{!! $status !!}</td>
                            <td>{!! $ordering !!}</td>
                            <td>{!! $type_menu !!}</td>
                            <td>{!! $type_open !!}</td>
                            <td class="last">{!! $listBtnAction !!}</td>
                        </tr>
                    @endforeach
                @else
                    @include('admin.templates.list_empty', ['colspan' => 6])
                @endif
            </tbody>
        </table>
    </div>
</div>
           