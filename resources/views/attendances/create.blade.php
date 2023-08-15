@extends('layouts.base')

@section('title', 'Create')

@section('main')
    <div class="container">
        <!-- Thông báo thêm thất bại -->
        @if(session('error'))
            <div class="toast align-items-center text-white bg-danger border-0 mx-auto mt-3" role="alert" aria-live="assertive" aria-atomic="true" id="myToast">
                <div class="d-flex">
                    <div class="toast-body">
                        {{ session('error') }}
                    </div>
                    <button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button>
                </div>
            </div>
        @endif

        <a href="{{route('attendances.index')}}" class="btn btn-primary mt-3"><i class="bi bi-house-door-fill"></i></a>


        <h2 class="text-center text-success mb-3">Create a attendance</h2>

        <!-- Form thêm -->
        <form action="{{ route('attendances.store') }}" method="post">
            @csrf

            <div class="form-group mb-3">
                <div class="row">
                    <div class="col-md-2 text-end my-auto">
                        <label for="employee">Employee:</label>
                    </div>
                    
                    <div class="col-md-10">
                        <select class="form-select" name="employee_id" id="employee_id" required>
                            <option selected>--None--</option>
                            @foreach ($employees as $employee)
                                <option value="{{$employee->id}}">{{$employee->name}}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
            </div>


            <div class="form-group mb-3">
                <div class="row">
                    <div class="col-md-2 text-end my-auto">
                        <label for="date">Date:</label>
                    </div>
                    
                    <div class="col-md-10">
                        <input type="date" name="date" id="date" class="form-control" placeholder="" aria-describedby="helpId" required>
                    </div>
                </div>
            </div>

            <div class="form-group mb-3">
                <div class="row">
                    <div class="col-md-2 text-end my-auto">
                        <label for="check_in_time">Check-in Time:</label>
                    </div>
                    
                    <div class="col-md-10">
                        <input type="time" name="check_in_time" id="check_in_time" class="form-control" placeholder="" aria-describedby="helpId" required>
                    </div>
                </div>
            </div>

            <div class="form-group mb-3">
                <div class="row">
                    <div class="col-md-2 text-end my-auto">
                        <label for="check_out_time">Check-out Time:</label>
                    </div>
                    
                    <div class="col-md-10">
                        <input type="time" name="check_out_time" id="check_out_time" class="form-control" placeholder="" aria-describedby="helpId" required>
                    </div>
                </div>
            </div>

            <div class="d-flex">
                <button class="btn btn-success ms-auto" type="submit">Create</button>
            </div>   
        </form>
    </div>
@endsection
