@include('components.layout')

<div class="container mx-auto  py-5">

    <div>
        <h1 class="text-2xl text-center py-3 font-bold">Create Contact List</h1>

        <div class="flex justify-between px-5">
            <div>
                <a href="{{ route('contact.index')}}"
                   class="bg-green-500 hover:bg-green-700 text-white font-semibold py-2 px-4 rounded">Home
                </a>
            </div>
            <div>
            </div>
        </div>
    </div>


    <div class="mx-auto p-5 mx-5 shadow-lg mt-5" >
        <form action="{{route('contact.store')}}" method="POST">
            @csrf
            <div class="mb-3">
                <label for="name" >Name <span class="text-red-500">* </span></label>
                <input required type="text" name="name" class=" mt-2 border border-gray-300 rounded p-2 w-full outline-none" placeholder="Name">
            </div>
            <div class="mb-3">
                <label for="email">Email<span class="text-red-500">* </span></label>
                <input required type="email" name="email" class=" mt-2 border border-gray-300 rounded p-2 w-full outline-none" placeholder="Email">
            </div>
            <div class="mb-3">
                <label for="phone">Phone</label>
                <input type="number" name="phone" class=" mt-2 border border-gray-300 rounded p-2 w-full outline-none" placeholder="Phone">
            </div>
            <div class="mb-3">
                <label for="address">Address</label>
                <input type="text" name="address" class=" mt-2 border border-gray-300 rounded p-2 w-full outline-none" placeholder="Address">
            </div>
            <div>
                <button type="submit" class="bg-blue-500 hover:bg-blue-700 text-white font-semibold my-2 py-2 px-4 rounded">Submit</button>
            </div>

        </form>
    </div>











{{--    <div>--}}
{{--        <div class="shadow shadow-lg p-5 my-5 flex justify-between">--}}
{{--            <div class="">--}}
{{--                <p class="font-semibold">Name : {{ $contact->name }}</p>--}}
{{--                <p>E-mail : {{ $contact->email }}</p>--}}
{{--                <p>Phone : {{ $contact->phone }}</p>--}}
{{--                <p>Address : {{ $contact->address }}</p>--}}
{{--            </div>--}}
{{--            <div>--}}
{{--                <button class="bg-green-500 hover:bg-green-700 text-white font-semibold py-1 px-4 rounded">Edit--}}
{{--                </button>--}}
{{--                <button class="bg-red-500 hover:bg-red-700 text-white font-semibold py-1 px-4 rounded">Delete--}}
{{--                </button>--}}
{{--            </div>--}}
{{--        </div>--}}
{{--    </div>--}}
</div>

