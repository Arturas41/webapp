import React, { Component } from "react";
import Item from "./item";
 
class Items extends Component {
  state = {
    items: [{ id: 1, value: 0 }, { id: 2, value: 10 }, { id: 3, value: 0 }]
  };
  render() {
    return (
      <React.Fragment>
        {this.state.items.map(item => (
          <Item key={item.id} value={item.value}>
            <div className="card-footer text-muted">
              Footer For Item Number <b className="badge badge-info">{item.id}</b>
            </div>
          </Item>
        ))}
      </React.Fragment>
    );
  }
}
 
export default Items;