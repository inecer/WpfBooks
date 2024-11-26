using System.Windows;
using WpfBooks.Models;
using WpfBooks.Service;

namespace WpfBooks.Views
{
    public partial class UpdateBook : Window
    {
        private readonly ApiService _apiService = new ApiService();
        private Book _book;

        public UpdateBook(Book book)
        {
            InitializeComponent();
            _book = book;
            TitleTextBox.Text = _book.Title;
            AuthorTextBox.Text = _book.Author;
            AvailableCheckBox.IsChecked = _book.Available;
        }

        private async void DoneButton_Click(object sender, RoutedEventArgs e)
        {
            _book.Title = TitleTextBox.Text;
            _book.Author = AuthorTextBox.Text;
            _book.Available = AvailableCheckBox.IsChecked ?? false;

            string url = $"http://localhost:5133/api/Book/UpdateBook/{_book.Id}?title={_book.Title}&author={_book.Author}&available={_book.Available}";
            await _apiService.UpdateBookAsync(url);
            MessageBox.Show("Book updated successfully!", "Success", MessageBoxButton.OK, MessageBoxImage.Information);
            Close();
        }
    }
}