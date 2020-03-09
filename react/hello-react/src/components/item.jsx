import React, { Component } from "react";
 
class Item extends Component {
  state = {
    count: 5
  };
 
  handleIncrement = (e) => {
    this.setState({ count: this.state.count + 1 });
    alert(e.message)
  };
 
  render() {
    return (
      <React.Fragment>
        <span className={this.styleBadge()}>{this.styleCount()}</span>
        <button onClick={() => {this.handleIncrement({ message: "Its Friday!" });}} className="btn btn-primary">
          Increment
        </button>
      </React.Fragment>
    );
  }
 
  styleBadge() {
    let classes = "badge m-3 badge-";
    classes += this.state.count === 0 ? "warning" : "info";
    return classes;
  }
 
  styleCount() {
    const { count } = this.state;
    return count === 0 ? "No Items" : count;
  }
}
 
export default Item;