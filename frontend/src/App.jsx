import Sidebar from './components/sidebar';
import Dashboard from './pages/dashboard';
import { Box } from '@mui/material';

function App() {
  return (
    <Box sx={{ display: 'flex', height: '100vh' }}>
      <Sidebar />
      <Box sx={{ flexGrow: 1, p: 3, backgroundColor: '#f5f5f5' }}>
        <Dashboard />
      </Box>
    </Box>
  );
}

export default App;