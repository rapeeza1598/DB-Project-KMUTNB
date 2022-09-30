import logo from "./logo.svg";
import "./App.css";

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
      </header>
      <body className="App-body">
        <div className="container">
          <div className="row">
            <div className="col-12">
              <h1>Employee</h1>
              <form id="employee-form">
                <div className="form-group">
                  <label for="employee_name">Name</label>
                  <input
                    type="text"
                    className="form-control"
                    id="employee_name"
                    placeholder="Enter name"
                  />
                </div>
                <div className="form-group">
                  <label for="employee_surname">Surname</label>
                  <input
                    type="text"
                    className="form-control"
                    id="employee_surname"
                    placeholder="Enter surname"
                  />
                </div>
                <div className="form-group">
                  <label for="employee_phone">Phone</label>
                  <input
                    type="text"
                    className="form-control"
                    id="employee_phone"
                    placeholder="Enter phone"
                  />
                </div>
                <div className="form-group">
                  <label for="employee_address">Address</label>
                  <input
                    type="text"
                    className="form-control"
                    id="employee_address"
                    placeholder="Enter address"
                  />
                </div>
                <div className="form-group">
                  <label for="employee_citizen_id">Citizen ID</label>
                  <input
                    type="text"
                    className="form-control"
                    id="employee_citizen_id"
                    placeholder="Enter citizen ID"
                  />
                </div>
                <div className="form-group">
                  <label for="employee_position">Position</label>
                  <input
                    type="text"
                    className="form-control"
                    id="employee_position"
                    placeholder="Enter position"
                  />
                </div>
                <button type="submit" className="btn btn-primary">
                  Submit
                </button>
              </form>
            </div>
          </div>
        </div>
      </body>
    </div>
  );
}

export default App;
