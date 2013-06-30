using System;
using System.ComponentModel;
using System.Globalization;
using System.Windows;
using System.Windows.Data;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Threading;

namespace HDE.IpCamEmuWpf
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : INotifyPropertyChanged
    {
        #region Fields

        private readonly Controller _controller = new Controller();

        #endregion

        #region Dependency Properties

        public event PropertyChangedEventHandler PropertyChanged;
        private void NotifyPropertyChanged(String info)
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(info));
            }
        }
        public static readonly DependencyProperty ServersStatusProperty = DependencyProperty.Register(
            "ServersStatusProperty",
            typeof(ServersStatus),
            typeof(MainWindow),
            new PropertyMetadata(ServersStatus.Loading));

        public ServersStatus ServersStatus
        {
            set 
            { 
                SetValue(ServersStatusProperty, value);
                NotifyPropertyChanged("ServersStatus");
            }
            get { return (ServersStatus)GetValue(ServersStatusProperty); }
        }

        #endregion

        #region Constructors

        public MainWindow()
        {
            DataContext = this;
            InitializeComponent();
            Dispatcher.BeginInvoke(DispatcherPriority.ApplicationIdle, new Action(StartMachinery));
        }

        #endregion

        private void OnMouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)
            {
                DragMove();
            }
        }

        private void OnClose(object sender, RoutedEventArgs e)
        {
            _controller.TearDown();
            Close();
        }

        private void OnError(string error)
        {
            ServersStatus = ServersStatus.FailedToStart;
            ToolTip = string.Format("Emulator failed with error:\n\n{0}\n\nSee logs for details...", error);
        }

        private void OnInitializationCompleted()
        {
            ServersStatus = ServersStatus.Running;
            ToolTip = "Emulator is running...";
        }

        private void StartMachinery()
        {
            _controller.Start(Dispatcher, OnInitializationCompleted, OnError);
        }
    }

    public class ServersStatusConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            var typedValue = ServersStatus.Loading;
            if (value != null)
            {
                typedValue = (ServersStatus) value;
            }

            switch (typedValue)
            {
                case ServersStatus.FailedToStart:
                    return Colors.Red;
                case ServersStatus.Loading:
                    return Colors.Gainsboro;
                case ServersStatus.Running:
                    return Colors.Yellow;
                default:
                    throw new NotSupportedException(string.Format("Unknown status: {0}", typedValue));
            }
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotSupportedException("The method or operation is not supported.");
        }
    }

    public class ServersStatusDarkConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            var typedValue = ServersStatus.Loading;
            if (value != null)
            {
                typedValue = (ServersStatus)value;
            }

            switch (typedValue)
            {
                case ServersStatus.FailedToStart:
                    return Colors.DarkRed;
                case ServersStatus.Loading:
                    return Colors.Gray;
                case ServersStatus.Running:
                    return Colors.Orange;
                default:
                    throw new NotSupportedException(string.Format("Unknown status: {0}", typedValue));
            }
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotSupportedException("The method or operation is not supported.");
        }
    }

    public enum ServersStatus
    {
        Loading,
        Running,
        FailedToStart
    }
}
