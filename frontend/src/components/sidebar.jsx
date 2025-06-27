import { Drawer, List, ListItem, ListItemText, Toolbar } from '@mui/material';

const drawerWidth = 240;

export default function Sidebar() {
  return (
    <Drawer
      variant="permanent"
      sx={{
        width: drawerWidth,
        flexShrink: 0,
        [`& .MuiDrawer-paper`]: {
          width: drawerWidth,
          boxSizing: 'border-box',
        },
      }}
    >
      <Toolbar />
      <List>
        <ListItem button>
          <ListItemText primary="Sales Overview" />
        </ListItem>
        {/* Add more sidebar items here */}
      </List>
    </Drawer>
  );
}