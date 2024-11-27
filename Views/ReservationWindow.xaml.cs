using System.Collections.ObjectModel;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using WpfBooks.Models;
using WpfBooks.Service;

namespace WpfBooks.Views
{
    public partial class ReservationWindow : Window
    {
        private readonly ApiService _apiService = new ApiService();
        public ObservableCollection<Reservation> Reservations { get; set; } = new ObservableCollection<Reservation>();

        public ReservationWindow()
        {
            InitializeComponent();
            DataContext = this;
            LoadReservations();
        }

        private async void LoadReservations()
        {
            var reservations = await _apiService.GetReservationsAsync();
            Reservations.Clear();
            foreach (var reservation in reservations)
            {
                Reservations.Add(reservation);
            }
        }

        private void AddReservation_Click(object sender, RoutedEventArgs e)
        {
            var addReservationWindow = new AddReservation();
            addReservationWindow.ShowDialog();
            LoadReservations();
        }

        private void UpdateReservation_Click(object sender, RoutedEventArgs e)
        {
            if (sender is Button button && button.Tag is Reservation selectedReservation)
            {
                var updateReservationWindow = new UpdateReservation(selectedReservation);
                updateReservationWindow.ShowDialog();
                LoadReservations();
            }
        }

        private async void DeleteReservation_Click(object sender, RoutedEventArgs e)
        {
            if (sender is Button button && button.Tag is Reservation selectedReservation)
            {
                Reservations.Remove(selectedReservation);
                await _apiService.DeleteReservationAsync(selectedReservation.Id);
            }
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