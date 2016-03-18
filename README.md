# react-native-mbprogresshud
iOS MBProgressHUD react-native wrapper


### install
```bash
$ npm i --save react-native-mbprogresshud
```
```bash 
$ rnpm link
```

### use
```jsx
var MBProgressHUD = require('react-native-mbprogresshud');

var hud = React.createClass({
    render(){
        return (
            <View style={styles.containter}>
                ....
                <MBProgressHUD title='MBProgressHUD' visible={this.state.visible}/>
            </View>
        );
    },
});
```

### screenshot 
![](http://7xs10f.com1.z0.glb.clouddn.com/Screen%20Shot.png)

