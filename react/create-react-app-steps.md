# Steps to create a new React app

*TODO* - Turn this into a script.

1. Run `create-react-app <project_name>; cd project_name`

2. Add `.scss-lint.yml` and `static.json` (found in this repo)

3. Change README file to include the following content:
  + Info on how Scss is incorporated
  + Useful commands to start / test / build server
  + Where and how the project is deployed
  + Any links to documentation / dev servers / backends
  
4. Sort out `index.html` file.
  + Remove comments.
  + Set theme color
  + Set page title
  + If using bootstrap, or font awesome - add links to CDNs.
  
5. Fill out `manifest.json`

6. Update favicon.ico

7. Add the following packages (install and add to package.json)
  + "axios": "^0.16.2",
  + "jquery": "^3.2.1",
  + "lodash": "^4.17.4",
  + "react-bootstrap": "^0.31.2",
  + "react-redux": "^5.0.6",
  + "react-router": "^4.2.0",
  + "react-router-bootstrap": "^0.24.2",
  + "react-router-dom": "^4.2.2",
  + "react-table": "^6.6.0",
  + "recharts": "^1.0.0-apha.5",
  + "redux": "^3.7.2",
  + "redux-form": "^7.0.3",
  + "redux-promise": "^0.5.3"

7. Delete `App.css`, `App.test.js`, `logo.svg`, `App.js`.

8. In `src` directory - create 3 directories, `js`, `img`, `style`. Leave `index.js` and `index.css` in the `src` directory.

9. Create `js/reducers/index.js` - example in repo.

10. Change `index.js` to the code in this repo.

11. Create `js/components/root.js` - example in repo.

12. Create `js/components/home.js` and `js/components/navigation.js` (your website).

13. Add the following to `scripts` in `package.json`:
  + "sass": "sass --watch ./src/style/index.scss:./src/index.css"
  
14. Add `style/normalize.scss` - example in repo.
  
15. Add `style/index.scss` (just import normalize for now)

16. Initialize Git Repo, and push.

17. Code website

18. Deploy!
