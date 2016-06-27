/*
 * @flow
 */

'use strict';

var React = require('react');
var {requireNativeComponent, StyleSheet} = require('react-native');

var MBProgressHUDIOS = React.createClass({
    propTypes: {
        title: React.PropTypes.string,
        visible: React.PropTypes.bool,
    },
    render(){
        if(!this.props.visible){
            return null;
        }

        return (
            <RCTMBProgressHUD style={styles.hud} title={this.props.title} />
        );
    },
    getInitialState(){
        return {};
    },
    getDefaultProps(){
        return {
            visible: true,
        };
    },
    componentDidMount(){

    },
});

var styles = StyleSheet.create({
    hud: {
        position: 'absolute',
    },
});

var RCTMBProgressHUD = requireNativeComponent('MBProgressHUDHostView', MBProgressHUDIOS);

module.exports = MBProgressHUDIOS;
