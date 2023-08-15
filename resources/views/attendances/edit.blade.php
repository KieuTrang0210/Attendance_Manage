@extends('layouts.base')

@section('title', 'Edit')

@section('main')
    <div class="container">
        <!-- Thông báo sửa thất bại -->
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

        <!-- Quay lại trang chủ -->
        <a href="{{route('attendances.index')}}" class="btn btn-primary mt-3"><i class="bi bi-house-door-fill"></i></a>

        <!-- Title -->
        <h2 class="text-center text-success mb-3">Edit a attendance</h2>

        <!-- Form sửa -->
        <form action="{{ route('attendances.update', $attendance->id) }}" method="post">
            @csrf
            @method('PUT')
            <div class="form-group mb-3">
                <div class="row">
                    <div class="col-md-2 text-end my-auto">
                        <label for="id">ID:</label>
                    </div>
                    
                    <div class="col-md-10">
                        <input type="text" name="id" id="id" class="form-control" value="{{ $attendance->id }}" readonly>
                    </div>
                </div>
            </div>

            <div class="form-group mb-3">
                <div class="row">
                    <div class="col-md-2 text-end my-auto">
                        <label for="employee">Employee:</label>
                    </div>
                    
                    <div class="col-md-10">
                        <select class="form-select" name="employee_id" id="employee_id" required>
                            @foreach ($employees as $employee)
                                <option value="{{$employee->id}}" @if($employee->id == $attendance->employee->id) selected @endif>{{$employee->name}}</option>
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
                        <input type="date" name="date" id="date" class="form-control" value="{{ $attendance->date }}" required>
                    </div>
                </div>
            </div>

            <div class="form-group mb-3">
                <div class="row">
                    <div class="col-md-2 text-end my-auto">
                        <label for="check_in_time">Check-in Time:</label>
                    </div>
                        
                    <div class="col-md-10">
                        <input type="time" name="check_in_time" id="check_in_time" class="form-control" value="{{ $attendance->check_in_time }}" required>
                    </div>
                </div>
            </div>

            <div class="form-group mb-3">
                <div class="row">
                    <div class="col-md-2 text-end my-auto">
                        <label for="check_out_time">Check-out Time:</label>
                    </div>
                        
                    <div class="col-md-10">
                        <input type="time" name="check_out_time" id="check_out_time" class="form-control" value="{{ $attendance->check_out_time }}" required>
                    </div>
                </div>
            </div>

            

            <div class="d-flex">
                <button class="btn btn-success ms-auto" type="submit">Save</button>
            </div>   
        </form>
    </div>
@endsection
