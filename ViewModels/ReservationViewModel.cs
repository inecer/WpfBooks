using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Threading.Tasks;
using WpfBooks.Models;
using WpfBooks.Service;

namespace WpfBooks.ViewModels
{
    public class ReservationViewModel : INotifyPropertyChanged
    {
        private readonly ApiService _apiService;

        private ObservableCollection<Book> _books;
        private Book _selectedBook;

        public ObservableCollection<Book> Books
        {
            get { return _books; }
            set
            {
                _books = value;
                OnPropertyChanged(nameof(Books));
            }
        }

        public Book SelectedBook
        {
            get { return _selectedBook; }
            set
            {
                _selectedBook = value;
                OnPropertyChanged(nameof(SelectedBook));
            }
        }

        public ReservationViewModel()
        {
            _apiService = new ApiService();
            LoadBooks();
        }

        private async void LoadBooks()
        {
            var books = await _apiService.GetBooksAsync();
            Books = new ObservableCollection<Book>(books);
        }

        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}