### React component return

- A component can only return a single top levele xml ,why?
- Makes it easy to do reconciliation

Re-rendering
- React did some work to calculte what all should update in thsi component
- the component actually got called(you can put a log to confirm this)
- the inspector shows you a bounding box around the component

It happens when
- A state variable that is being used inside a component changes
- A prent compoentn re-render triggers all children re-rendering

We have to minimise the number of re-renders to make a highly optimal react app
The more the components that are getting re-rendered, the worse

React Memo : 
- only render if it has dynamic variable
- memo lets you skip re-rendering a component when its props unchanged

