import { createStackNavigator } from 'react-navigation-stack';
import { createAppContainer } from 'react-navigation';
import Temas from './pages/Temas';

const navigation = createStackNavigator({
    Main: Temas,
});

export default createAppContainer(navigation);
