import React from 'react';

/*
Export a `PostForm` presentational component that creates a form to either
create or edit a post (it will be used by two separate containers). The form
should indicate whether it is a create or edit form based on the `formType`
prop. The form should initialize state to the `post` passed in from props. Use
controlled inputs and trigger the `action` passed in from the container upon
submission. Use a text input for the title and a textarea for the body.
*/

class PostForm extends React.Component{
  constructor(props){
    super(props)
    this.state = this.props.post
  }

  handleSubmit(e){
    e.preventDefault()
    this.props.action(this.state)
  }

  updateTitle(e){
    this.setState({
      title: e.currentTarget.value
    })
  }

  updateBody(e){
    this.setState({
      body: e.currentTarget.value
    })
  }

  render(){
    return(
      <div>

        <h3>{this.props.formType}</h3>
        <form onSubmit={this.handleSubmit}>
          <label>Title
            <input 
            type="text"
            value={this.state.title}
            onChange={this.updateTitle}></input>
          </label>
          <label>Body
            <textarea 
            value={this.state.body}
            onChange={this.updateBody}></textarea>
          </label>
        </form>
      </div>
    )
  }
}

export default PostForm