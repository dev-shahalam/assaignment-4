@include('components.layout')

<div class="container mx-auto  py-5">

    <div>
        <h1 class="text-2xl text-center py-3 font-bold">Create Contact List</h1>

        <div class="flex justify-between px-5 mx-5">
            <div>
                <a href="{{ route('contact.index')}}"
                   class="bg-green-500 hover:bg-green-700 text-white font-semibold py-1 px-4 rounded">Back</a>
            </div>
            <div>
            </div>
        </div>
    </div>


    <div class="mx-auto p-5 mx-5 shadow-lg mt-5">
        <form action="{{route('contact.update',$contact->id)}}" method="POST">
            @method('PUT')
                @csrf
                <div class="mb-3">
                    <label for="name">Name <span class="text-red-500">* </span></label>
                    <input required value="{{$contact->name}}" type="text" name="name"
                           class=" mt-2 border border-gray-300 rounded p-2 w-full outline-none" placeholder="Name">
                </div>
                <div class="mb-3">
                    <label for="email">Email<span class="text-red-500">* </span></label>
                    <input required value="{{$contact->email}}" type="email" name="email"
                           class=" mt-2 border border-gray-300 rounded p-2 w-full outline-none" placeholder="Email">
                </div>
                <div class="mb-3">
                    <label  for="phone">Phone</label>
                    <input required value="  {{ old('phone'),$contact->phone}}" type="number" name="phone"
                           class=" mt-2 border border-gray-300 rounded p-2 w-full outline-none" placeholder="Phone">
                </div>
                <div class="mb-3">
                    <label for="address">Address</label>
                    <input required value="{{$contact->address}}" type="text" name="address"
                           class=" mt-2 border border-gray-300 rounded p-2 w-full outline-none" placeholder="Address">
                </div>
                <div>
                    <button type="submit"
                            class="bg-blue-500 hover:bg-blue-700 text-white font-semibold my-2 py-2 px-4 rounded">Update
                    </button>
                </div>

            </form>

    </div>
</div>



