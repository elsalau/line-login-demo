## Functions

- User authentication

- Calling APIs
  - Issuing access tokens for testing
  - Getting user profiles:
    1. User's nickname
    2. User's ID
    3. User's profile image URL
    4. User's statue message

    ```
    {
      "displayName":"Brown",
      "mid":"u0047556f2e40dba2456887320ba7c76d",
      "pictureUrl":"http://example.com/abcdefghijklmn",
      "statusMessage":"Hello, LINE!"
    }
    ```

  ```
  # Profile image thumbnails
    200x200: url/large
    51x51:   url/small
  ```

#### Framwork
- Ruby on Rails
  - Ruby:  2.2.5
  - Rails: 4.2.7
  - Gems: [omniauth-line](https://github.com/kazasiki/omniauth-line)

#### Content
- Landing Page
  - Allow user to login with Line account
  - Display user profile directly after login

#### How to integrate
1. Create a business account at the Business Center
2. Select LINE Login on your business account page
3. Create a Channel - Ecowork Inc.(to demonstrate Line Login)
4. Integrate LINE’s user authentication process into website
  - Install 'omniauth-line' gem
  - Configure provider infomation in config/initializers/omniauth.rb
  - Configure route for callback and logout
  - Configure Sessions Controller for create, destroy action
  - Generate migration file to store user data
  - Configure user.rb to save user data
  - Configure views to display user info after user login

5. Use REST APIs from website
6. Test website
7. Publish website

#### Reference
[Line Business Center](https://business.line.me/zh-hant/services/login)
[https://developers.line.me/web-api/overview](https://developers.line.me/web-api/overview)
