import React, { Component } from "react";
 
class Item extends Component {
  state = {
    listitems: []
  };
 
    render() {
      return <React.Fragment>{this.renderItems()}</React.Fragment>;
    }
  renderItems() {
    if (this.state.listitems.length === 0) {
      return (
        <div class="alert alert-warning" role="alert">
          There are no items to list!
        </div>
      );
    } else {
      return (
        <ul className="list-group">
          {this.state.listitems.map(listitem => (
            <li className="list-group-item list-group-item-primary">
              {listitem}
            </li>
          ))}
        </ul>
      );
    }
  }
}
 
export default Item;