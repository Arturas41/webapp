import ReactDOM from 'react-dom'
import React, { useState } from 'react';
import axios from 'axios';
 
class Form extends React.Component {
    state = { companyName: 'Microsoft' };
    
      handleSubmit = async (event) => {
        event.preventDefault();
        const resp = await axios.get(`https://api.github.com/users/${this.state.companyName}`);
        this.props.onSubmit(resp.data);
        this.setState({ companyName: '' });
      };
    
	render() {
  	return (
    	<form onSubmit={this.handleSubmit}>
            <span className="formtext">Form </span>
              <input 
              type="text" 
              value={this.state.companyName}
              onChange={event => this.setState({ companyName: event.target.value })}
              placeholder="Enter Company Name" 
              required 
            />
            <button>Go!</button>
    	</form>
    );
  }
}

class CompanyList extends React.Component {
    render() {
        const p = this.props;
        return (
            <div className="companylist">
            <span className="companylisttext">&#x3C;CompanyList /&#x3E;</span>
            {p.companyinfoarray.map(companyinfo => <Company key={companyinfo.id} {...companyinfo}/>)}
            </div>
        );
    }
}

class Company extends React.Component {
	render() {
  	const p = this.props;
  	return (
    	<div className="company">
        <span className="companytext">Company </span>
    	  <img src={p.avatar_url} />
        <div className="companyinfo">
          <div>Name: {p.name}</div>
          <div>Email: {p.email}</div>
          <div>Bio: {p.bio}</div>
          <div>Repos: {p.public_repos}</div>
        </div>
    	</div>
    );
  }
}

class App extends React.Component {
  state = {
    companyinfoarray: [],
  };
 
  addCompany = (companyinfo) => {
  	this.setState(prevState => ({
    	companyinfoarray: [...prevState.companyinfoarray, companyinfo],
    }));
  };
 
	render() {
  	return (
    	<div>
        <Form onSubmit={this.addCompany} />
        <CompanyList companyinfoarray={this.state.companyinfoarray} />
        
    	</div>
    );
  }	
}
export default App;
