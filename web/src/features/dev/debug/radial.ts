import { debugData } from '../../../utils/debugData';
import type { MenuItem } from '../../../typings';

export const debugRadial = () => {
  debugData<{ items: MenuItem[]; sub?: boolean }>([
    {
      action: 'openRadialMenu',
      data: {
        items: [
          { icon: 'palette', label: 'Paint' },
          { icon: 'warehouse', label: 'Garage' },
<<<<<<< HEAD
          { icon: 'palette', label: 'Quite long text' },
=======
          { icon: 'palette', label: 'Quite long  \ntext' },
>>>>>>> upstream/master
          { icon: 'palette', label: 'Paint' },
          { icon: 'warehouse', label: 'Garage' },
        ],
      },
    },
  ]);
};
