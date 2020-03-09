import React, { Component } from "react";
 
class Item extends Component {
  state = {
    count: this.props.value
  };
 
  handleIncrement = e => {
    this.setState({ count: this.state.count + 1 });
  };
 
  render() {
    return (
      <React.Fragment>
        <div className="card mb-2">
          <h5 className={this.styleCardHeader()}>{this.styleCount()}</h5>
          <div className="card-body">
            <button
              onClick={item => {
                this.handleIncrement({ item });
              }}
              className="btn btn-lg btn-outline-secondary"
            >
              Increment
            </button>
          </div>
          {this.props.children}
        </div>
      </React.Fragment>
    );
  }
 
  styleCardHeader() {
    let classes = "card-header h4 text-white bg-";
    classes += this.state.count === 0 ? "warning" : "primary";
    return classes;
  }
 
  styleCount() {
    const { count } = this.state;
    return count === 0 ? "No Items!" : count;
  }
}
 
export default Item;