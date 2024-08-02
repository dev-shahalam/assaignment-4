@include('components.layout')

<div class="container mx-auto shadow-lg">

    <div>
        <h1 class="text-2xl text-center py-3 font-bold">Contacts List</h1>

        <div class="flex justify-between mx-5">
            <div>
                <a href="{{ route('contact.index')}}"
                   class="bg-green-500 hover:bg-green-700 text-white font-semibold py-2 px-4 rounded">Home
                </a>
            </div>
            <div>
            </div>
        </div>
    </div>

    <div>
            <div class="shadow shadow-lg p-5 my-5 flex justify-between">
                <div class="w-3/4">
                    <p class="font-semibold">Name : {{ $contact->name }}</p>
                    <p>E-mail : {{ $contact->email }}</p>
                    <p>Phone : {{ $contact->phone }}</p>
                    <p>Address : {{ $contact->address }}</p>
                </div>
                <div class="w-1/4 ">
                    <a href="{{ route('contact.edit', $contact->id) }}" class="bg-green-500 hover:bg-green-700 text-white font-semibold py-1 px-4 rounded">Edit</a>
                    <button class="bg-red-500 hover:bg-red-700 text-white font-semibold py-1 px-4 rounded">Delete
                    </button>
                </div>
            </div>
    </div>
</div>

