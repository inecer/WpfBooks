using System.Collections.ObjectModel;
using System.Threading.Tasks;
using WpfBooks.Models;
using WpfBooks.Service;

namespace WpfBooks.ViewModels
{
    public class MainViewModel : BaseViewModel
    {
        private readonly ApiService _apiService;

        private ObservableCollection<Book> _books;
        public ObservableCollection<Book> Books
        {
            get { return _books; }
            set { _books = value; OnPropertyChanged(nameof(Books)); }
        }

        private ObservableCollection<Reservation> _reservations;
        public ObservableCollection<Reservation> Reservations
        {
            get { return _reservations; }
            set { _reservations = value; OnPropertyChanged(nameof(Reservations)); }
        }

        public MainViewModel()
        {
            _apiService = new ApiService();
            LoadBooks();
        }

        private async void LoadBooks()
        {
            var books = await _apiService.GetBooksAsync();
            Books = new ObservableCollection<Book>(books);
        }
    }
}