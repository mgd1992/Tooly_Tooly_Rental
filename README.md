# **Tool Rental Web App ⚒️**

**Status: In Development**

Project Overview

This is a tool rental web application that allows users to create profiles, upload tools for rent, and browse or rent tools from other users. It's designed to facilitate peer-to-peer tool sharing, helping users save on purchasing costs and supporting sustainable use of resources.

Features

User Profiles: Users can create and manage their profiles, including contact information and preferences.

Tool Listing: Users can upload tools with details such as description, price, and availability.

Tool Rental: Users can rent tools directly from others through the app.

Image Uploads: Powered by Cloudinary, users can upload images of their tools.
More features are planned for future versions.

Tech Stack

Backend: Ruby on Rails

Frontend: Ruby, Stimulus, HTML, SCSS, Bootstrap

Image Storage: Cloudinary

Deployment: Heroku

Installation
Clone the Repository

```bash
git clone https://github.com/your-username/tool-rental-app.git
cd tool-rental-app
```
Install Dependencies
```bash
bundle install
yarn install
```
Setup Database

```bash
Copiar código
rails db:create
rails db:migrate
```
Environment Variables

Add your Cloudinary and other necessary API keys in a .env file:


CLOUDINARY_URL=your_cloudinary_url
Run the App

```bash
rails server
```
Visit: http://localhost:3000 to access the app locally.

Deployment
The app is deployed on Heroku. To deploy, follow these steps:

Commit any changes:

```bash
git add .
git commit -m "Your message"
```
Push to Heroku:

```bash
git push heroku main
```
Database Setup (first-time deployment only):

```bash
heroku run rails
db:migrate
```

Contributing
If you're interested in contributing, please fork the repository and create a pull request with detailed information on your changes.
All contributions are welcome!

License
This project is open-source and available

Contact
For questions or feedback, please reach out at marcoogarbini@gmail.com
