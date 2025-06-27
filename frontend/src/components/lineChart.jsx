import {
  LineChart, Line, XAxis, YAxis, Tooltip, ResponsiveContainer
} from 'recharts';
import { useEffect, useState } from 'react';

export default function SalesLineChart() {
  const [data, setData] = useState([]);

  useEffect(() => {
    fetch('http://localhost:3000/sales')
      .then(res => res.json())
      .then(data => {
        const formatted = data.map(item => ({
          month: item.month,
          sales: Number(item.total_sales)
        }));
        setData(formatted);
      });
  }, []);

  return (
    <ResponsiveContainer width="100%" height={300}>
      <LineChart data={data}>
        <XAxis dataKey="month" />
        <YAxis />
        <Tooltip />
        <Line type="monotone" dataKey="sales" stroke="#3f51b5" strokeWidth={2} />
      </LineChart>
    </ResponsiveContainer>
  );
}