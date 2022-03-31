# Newsly

## Description.
Keep updated with the lates news.

## Use

### **Structure**:-

I used the MVVM structure with use cases to cleanly achieve separation of concern for the user interface from the application logic. By using this architecture it helped in
- Independent of UI: The UI can change easily, without changing the rest of the system as we can substitute the table view with a collection view and we will not have to touch our logic
- Independent of the database and network: I can easily change them without breaking business rules.

#### Data Flow
1. View(UI) calls a method from ViewModel.
2. ViewModel executes Use Case.
3. Use Case call network API and return the articles to viewModel.
5. Information flows back to the View(UI) where we display the list of items.

### **Caching**:- 
1. I used **UserDefauls** to cache simple configuration(user favorites and date of last caching)
2. I used **documents directory** to cache articles and refresh it every 15 minutes.

## Pods

- **Alamofire**: HTTP networking library to simplify common REST services.
- **SDWebImage**: Async image downloader with cache support.
- **DropDown**:  Design drop down.

## ScreenShots
<div>
<img src="https://user-images.githubusercontent.com/39991121/161083871-4ba48f84-c5d9-4351-83af-bbd849e485e7.jpg" width= "100">
<img src="https://user-images.githubusercontent.com/39991121/161083876-9cf22def-55e7-473c-9d77-09e2ad0dd369.jpg" width= "100">
<img src="https://user-images.githubusercontent.com/39991121/161083881-2767c46a-4f8b-4f26-90c7-428a428f00bd.jpg" width= "100">
<img src="https://user-images.githubusercontent.com/39991121/161083885-13520c39-03d1-4ed7-b00e-e1d24d672e7c.jpg" width= "100">
<img src="https://user-images.githubusercontent.com/39991121/161083899-a3c34db8-1689-476d-b28b-1c296fdb3ff9.jpg" width= "100">
<img src="https://user-images.githubusercontent.com/39991121/161083918-24d113df-9a51-471b-aca3-d8333eca9592.jpg" width="100">
</div>

## Video

https://user-images.githubusercontent.com/39991121/161083536-5c1edbbc-7a4a-4bef-8875-a088e54c22ad.mp4
