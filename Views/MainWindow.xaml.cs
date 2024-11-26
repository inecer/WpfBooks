using System.Collections.ObjectModel;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using WpfBooks.Models;
using WpfBooks.Service;

namespace WpfBooks.Views
{
    public partial class MainWindow : Window
    {
        private readonly ApiService _apiService = new ApiService();
        public ObservableCollection<Book> Books { get; set; } = new ObservableCollection<Book>();

        public MainWindow()
        {
            InitializeComponent();
            DataContext = this;
            LoadBooks();
        }

        private async Task LoadBooks()
        {
            var books = await _apiService.GetBooksAsync();
            foreach (var book in books)
            {
                Books.Add(book);
            }
        }

        private void AddBook_Click(object sender, RoutedEventArgs e)
        {
            var addBookWindow = new AddBook();
            addBookWindow.ShowDialog();
            // Rafrachis pour afficher le nouveau livre ajouté
            Books.Clear();
            LoadBooks();
        }

        private void UpdateBook_Click(object sender, RoutedEventArgs e)
        {
            if (sender is Button button && button.Tag is Book selectedBook)
            {
                var updateBookWindow = new UpdateBook(selectedBook);
                updateBookWindow.ShowDialog();
                Books.Clear();
                LoadBooks();
            }
        }

        private async void DeleteBook_Click(object sender, RoutedEventArgs e)
        {
            if (sender is Button button && button.Tag is Book selectedBook)
            {
                Books.Remove(selectedBook);
                await _apiService.DeleteBookAsync(selectedBook.Id);
            }
        }
    }
}