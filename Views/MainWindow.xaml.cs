using System.Windows;
using System.Windows.Input;

namespace WpfBooks.Views
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void NavigateToBooks(object sender, RoutedEventArgs e)
        {
            var bookWindow = new BookWindow();
            bookWindow.Show();
        }

        private void NavigateToReservations(object sender, RoutedEventArgs e)
        {
            var reservationWindow = new ReservationWindow();
            reservationWindow.Show();
        }
        
        private void CloseApp(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }
        
        private void Window_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.ChangedButton == MouseButton.Left)
            {
                this.DragMove();
            }
        }
    }
}