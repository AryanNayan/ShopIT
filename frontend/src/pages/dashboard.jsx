import { Typography, Paper } from '@mui/material';
import SalesLineChart from '../components/lineChart';

export default function Dashboard() {
  return (
    <>
      <Typography variant="h4" gutterBottom>
        Sales Overview
      </Typography>

      <Paper elevation={3} sx={{ p: 2, mt: 2 }}>
        <SalesLineChart />
      </Paper>
    </>
  );
}