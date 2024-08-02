@include('components.layout')

<div class="container py-5 mx-auto shadow-lg">

    <div>
        <h1 class="text-2xl text-center py-3 font-bold">Contacts ({{$contacts->count()}})</h1>


        <div class="flex justify-between mx-5">
            <div>
                <a href="{{ route('contact.index')}}"
                   class="mr-4 bg-green-500 hover:bg-green-700 text-white font-semibold py-2 px-4 rounded">Home
                </a>
                <a href="{{ route('contact.create')}}"
                   class="bg-green-500 hover:bg-green-700 text-white font-semibold py-2 px-4 rounded">Create
                </a>
            </div>
            <div>
                <form>
                    <input type="text" name="email" class="border border-gray-500 rounded p-2 outline-none"
                           placeholder="Search By E-mail">
                    <button href="{{ route('contact.show','email') }}"
                            class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">Search
                    </button>
                </form>
            </div>
        </div>
    </div>


    <div>
        @foreach($contacts as $contact)
            <div class="shadow shadow-lg p-5 my-5 flex justify-between ">
                <div class="w-3/4">
                    <p class="font-semibold">Name : {{ $contact->name }}</p>
                    <p>E-mail : {{ $contact->email }}</p>
                    <p>Phone : {{ $contact->phone }}</p>
                    <p>Address : {{ $contact->address }}</p>
                </div>
                <div class="w-1/4 flex justify-between">
                    <div>
                        <a href="{{ route('contact.show', $contact->id) }}"
                           class="bg-green-500 hover:bg-green-700 text-white font-semibold py-1 px-5 rounded">Show</a>
                    </div>
                    <div>
                        <a href="{{ route('contact.edit', $contact->id) }}"
                           class="bg-green-500 hover:bg-green-700 text-white font-semibold py-1 px-5 rounded">Edit</a>
                    </div>
                    <div>
                        <a href="#" onclick="deleteContact({{$contact->id}})"
                           class="bg-red-500 hover:bg-red-700 text-white font-semibold py-1 px-5 rounded">Delete
                        </a>
                        <form action="{{ route('contact.delete', $contact->id) }}" id="delete-{{ $contact->id }}"
                              method="post">
                            @method('delete')
                            @csrf
                        </form>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
</div>


<script>
    function deleteContact(id) {
        if (confirm('Delete this contact?')){
            let form = document.getElementById('delete-' + id);
            form.submit();
        }else{
            return location.href="{{route('contact.index')}}"
        }
    }
</script>
