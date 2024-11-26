using System.Windows;
using WpfBooks.Models;
using WpfBooks.Service;

namespace WpfBooks.Views
{
    public partial class AddBook : Window
    {
        private readonly ApiService _apiService = new ApiService();

        public AddBook()
        {
            InitializeComponent();
        }

        private async void AddButton_Click(object sender, RoutedEventArgs e)
        {
            var title = TitleTextBox.Text;
            var author = AuthorTextBox.Text;
            var available = AvailableCheckBox.IsChecked ?? false;

            string url = $"http://localhost:5133/api/Book/CreateBook?title={title}&author={author}&available={available}";
            await _apiService.AddBookAsync(url, new Book());
            MessageBox.Show("Book added successfully!", "Success", MessageBoxButton.OK, MessageBoxImage.Information);
            Close();
        }
    }
}