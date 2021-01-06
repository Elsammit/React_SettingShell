import React, { Component } from 'react'
import './battle.css'

export default class Battle extends Component  {
    constructor (props) {
        super(props);
        this.state = {
            x:0,
        };
    }
    componentDidMount(){
        this.setState({x:0});
    }

    componentWillUnmount() {
        
    }

    render () {
        return(
            <div>
                <p>Hello World</p>
            </div>
        )
    }
}