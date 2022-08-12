using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using System.Windows;

namespace My_Responsive_App.ViewModel
{
    public class MainViewModel : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler? PropertyChanged;
        private void OnPropertyChanged(string propName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propName));
        }

        public MainViewModel()
        {
            IsPinned = false;
        }

        private bool _isPinned;
        public bool IsPinned
        {
            get { return _isPinned; }
            set { _isPinned = value; OnPropertyChanged(nameof(IsPinned)); }
        }

        //close the window
        public void CloseApp(object obj)
        {
            MainWindow window = obj as MainWindow;
            window.Close();
        }

        //minimize window
        public void MinimizeApp(object obj)
        {
            MainWindow window = obj as MainWindow;
            window.WindowState = WindowState.Minimized;
        }

        //maximize and normal state for app
        public void MaximizeApp(object obj)
        {
            MainWindow window = obj as MainWindow;
            window.WindowState = window.WindowState == WindowState.Maximized ? WindowState.Normal : WindowState.Maximized;
        }

        //pin window
        public void PinOrUnpinApp(object obj)
        {
            MainWindow window = obj as MainWindow;
            if (!IsPinned)
            {
                window.Topmost = true;
                IsPinned = true;
            }
            else
            {
                window.Topmost = false;
                IsPinned = false;
            }
        }

        private ICommand _closeCommand;
        public ICommand CloseAppCommand
        {
            get
            {
                if (_closeCommand == null)
                {
                    _closeCommand = new RelayCommand(p => CloseApp(p));
                }
                return _closeCommand;
            }
        }
        private ICommand _pinCommand;
        public ICommand PinAppCommand
        {
            get
            {
                if (_pinCommand == null)
                {
                    _pinCommand = new RelayCommand(p => PinOrUnpinApp(p));
                }
                return _pinCommand;
            }
        }

        private ICommand _minimizeCommand;
        public ICommand MinimizeAppCommand
        {
            get
            {
                if (_minimizeCommand == null)
                {
                    _minimizeCommand = new RelayCommand(p => MinimizeApp(p));
                }
                return _minimizeCommand;
            }
        }

        private ICommand _maximizeCommand;
        public ICommand MaximizeAppCommand
        {
            get
            {
                if (_maximizeCommand == null)
                {
                    _maximizeCommand = new RelayCommand(p => MaximizeApp(p));
                }
                return _maximizeCommand;
            }
        }
    }
}
